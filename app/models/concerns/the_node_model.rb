module TheNodeModel
  extend ActiveSupport::Concern

  included do
    has_closure_tree
    attribute :parent_ancestors
  end

  # def descendant_ids(c_ids = child_ids)
  #   @descendant_ids ||= c_ids.dup
  #   get_ids = self.class.where(parent_id: c_ids).pluck(:id).flatten
  #   if get_ids.present?
  #     @descendant_ids.concat get_ids
  #     descendant_ids(get_ids)
  #   else
  #     @descendant_ids
  #   end
  # end
  #
  # def ancestor_ids
  #   node, node_ids = self, []
  #   while node.parent_id
  #     node_ids << node.parent_id
  #     node = node.parent
  #   end
  #   node_ids.reverse
  # end

  #
  # def middle?
  #   parent_id.present? && children_count > 0
  # end

end

# 开始属性列表
# :name,           :string,  limit: 50
# :content,        :text,    limit: 65535
# :status,         :integer, default: 0
# :node_type,      :integer
# :children_count, :integer, default: 0
# :logo_id,    :string,  limit: 255

# required fields
# :parent_id