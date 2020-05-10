class ChatroomController < ApplicationController

    def index
        @messages = Message.all #Create instance variable
    end
end
