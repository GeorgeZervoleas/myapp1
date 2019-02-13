
# in the messenger load previous messages until the scroll bar appears
def autoload_messenger_messages
  if @is_messenger == 'true'
    # if previous messages exist, load them
    if @messages_to_display_offset != 0
      'shared/load_more_messages/messenger/load_previous_messages'
    else 
      # remove load previous messages link 
      'shared/load_more_messages/messenger/remove_previous_messages_link'
    end 
  else
    'shared/empty_partial'
  end
end

def append_previous_messages_partial_path
  # if a conversation is opened in the messenger
  if @is_messenger == 'true'
    'shared/load_more_messages/messenger/append_messages' 
  else 
    'shared/load_more_messages/window/append_messages' 
  end 
end