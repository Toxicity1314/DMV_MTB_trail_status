class IssueSerializer < ActiveModel::Serializer
  attributes :id, :issue, :trail_id
  has_one :trail
end
