class TodoList
  attr_accessor :items

  def initialize(arr)
    @items = arr
  end

  def get_items
    p items
    @items
  end

  def add_item(item)
    @items << item
  end

  def delete_item(item)
    @items.delete(item)
  end

  def get_item(index)
    @items[index]
  end

end