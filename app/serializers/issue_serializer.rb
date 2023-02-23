class IssueSerializer < ActiveModel::Serializer
  attributes :id, :issue
  has_one :trail
end
