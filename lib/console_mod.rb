module GTK
  class Console

    def eval_the_set_command
      cmd = current_input_str.strip
      if cmd.length != 0
        @log_offset = 0
        prompt.clear

        @command_history.pop while @command_history.length >= @max_history
        @command_history.unshift cmd
        @command_history_index = -1
        @nonhistory_input = ''

        if cmd == 'quit' || cmd == ':wq' || cmd == ':q!' || cmd == ':q' || cmd == ':wqa' || cmd == 'exit'
          $gtk.request_quit
        elsif cmd.start_with? ':'
          send ((cmd.gsub '-', '_').gsub ':', '')
        else
          puts "-> #{cmd}"
          begin
            @last_command = cmd
            #Kernel.eval("$results = (#{cmd})")
            if $results.nil?
              puts "=> nil"
            elsif $results == :console_silent_eval
              # do nothing since the console is silent
            else
              puts "=> #{$results}"
            end
            @last_command_errored = false
          rescue Exception => e
            try_search_docs e
            # if an exception is thrown and the bactrace includes something helpful, then show it
            if (e.backtrace || []).first && (e.backtrace.first.include? "(eval)")
              puts  "* EXCEPTION: #{e}"
            else
              puts  "* EXCEPTION: #{e}\n#{e.__backtrace_to_org__}"
            end
          end
        end
      end
    end
  end
end
