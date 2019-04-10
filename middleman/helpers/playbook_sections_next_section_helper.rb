module PlaybookSectionsNextSectionHelper
  def playbook_sections_next_section(current_page)
    current_path = current_path_stripped

    items = data.navigation.items
    next_item = nil

    items.each_with_index do |item, i|
      detected = item.url == current_path

      if detected
        next_item = items[i.next]
        break
      end
    end

    next_item
  end
end
