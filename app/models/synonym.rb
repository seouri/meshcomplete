class Synonym < ActiveRecord::Base
  belongs_to :subject
  
  def self.search(starts_with, limit = 10)
    match_keyword = ::ActiveRecord::Base.connection.adapter_name == "PostgreSQL" ? "ILIKE" : "LIKE"
    mesh = where(["term #{match_keyword} ?", "#{starts_with}%"]).limit(limit).order("term asc").includes(:subject).group_by(&:subject)
    mesh.keys.compact.sort_by(&:term).map {|m| {"id" => m.id, "label" => m.term, "value" => m.term, "entries" => mesh[m].reject {|e| m.term == e.term}.map{|e| e.term}.sort}}
  end
end
