class FileMDateTag < Tags::DefaultTag

  infos( :name => 'Custom/FileMDate',
         :summary => "Puts the modification time of the file on the page" )

  register_tag 'filemdate'

  def process_tag( tag, chain )
    return File.mtime( chain.last.node_info[:src] ).to_s
  end

end
