class Posl < ApplicationRecord
  include ActiveModel::Serializers::Xml
  validates_uniqueness_of :inputed
  def attributes
    {'id' => nil, 'inputed' => nil, 'all' => nil, 'kolvo' => nil, 'max_p'=>nil}
  end
end
