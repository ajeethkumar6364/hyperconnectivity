# subclass coco to make it do flooding

Class coco -superclass Agent/MessagePassing
set x 0
set y 0
set z 0
set v 0
set u 0

coco instproc recv {source sport size data} {
    $self instvar messages_seen node_
    global ns data_tr num_nodes x y z u v BROADCAST_ADDR search_his

    # extract message ID from message
    set message_id [lindex [split $data ":"] 0]
    set avl_data [lindex [split $data ":"] 1]

    if {[lsearch $messages_seen $message_id] == -1} {
	lappend messages_seen $message_id
	puts $data_tr $data
	
        $ns trace-annotate "Node [$node_ node-addr] received $avl_data REQ"
        puts $search_his "Node [$node_ node-addr] received $avl_data REQ"
        	   
        	   if {[$node_ node-addr] == 14} {
        	       if {$avl_data == "coco_cost1" || $avl_data == "coco_cost2" || $avl_data == "coco_cost3" || $avl_data == "coco_cost4" || $avl_data == "coco_cost5"} {
        	         if {$x == 1 || $y == 1 || $z == 1 || $u == 1 || $v == 1} {
		            $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		            $ns trace-annotate "The data $avl_data already sended to the sender node"
		            puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		            puts $search_his "The data $avl_data already sended to the sender node"
		         } else {
		            $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		            $ns trace-annotate "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		            puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		            puts $search_his "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		            if {$avl_data == "coco_cost1"} {
		            set x 1
		            } elseif {$avl_data == "coco_cost2"} {
		            set y 1
		            } elseif {$avl_data == "coco_cost3"} {
		            set z 1
		            } elseif {$avl_data == "coco_cost4"} {
		            set u 1
		            } elseif {$avl_data == "coco_cost5"} {
		            set v 1
		            }
		         }
		       }
        	   } elseif {[$node_ node-addr] == 19} {
        	       if {$avl_data == "coco_cost1"} {
		        if {$x == 1} {
		           $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		           $ns trace-annotate "The data $avl_data already sended to the sender node"
		           puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		           puts $search_his "The data $avl_data already sended to the sender node"
		        } else {
		           $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		           $ns trace-annotate "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		           puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		           puts $search_his "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		           set x 1
		        }
        	      }
        	   } elseif {[$node_ node-addr] == 2} {
        	       if {$avl_data == "coco_cost2"} {
        	         if {$y == 1} {
		            $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		            $ns trace-annotate "The data $avl_data already sended to the sender node"
		            puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		            puts $search_his "The data $avl_data already sended to the sender node"
		         } else {
		            $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		            $ns trace-annotate "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		            puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		            puts $search_his "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		            set y 1
		         }
        	       }
        	   } elseif {[$node_ node-addr] == 10} {
        	       if {$avl_data == "coco_cost3"} {
        	         if {$z == 1} {
		            $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		            $ns trace-annotate "The data $avl_data already sended to the sender node"
		            puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		            puts $search_his "The data $avl_data already sended to the sender node"
		         } else {
		            $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		            $ns trace-annotate "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		            puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		            puts $search_his "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		            set z 1
		         }
        	       }
        	   } elseif {[$node_ node-addr] == 21} {
        	       if {$avl_data == "coco_cost4"} {
        	         if {$u == 1} {
		            $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		            $ns trace-annotate "The data $avl_data already sended to the sender node"
		            puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		            puts $search_his "The data $avl_data already sended to the sender node"
		         } else {
		            $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		            $ns trace-annotate "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		            puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		            puts $search_his "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		            set u 1
		         }
        	       }        	       
        	   } elseif {[$node_ node-addr] == 5} {
        	       if {$avl_data == "coco_cost5"} {
        	         if {$v == 1} {
		             $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		             $ns trace-annotate "The data $avl_data already sended to the sender node"
		             puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		             puts $search_his "The data $avl_data already sended to the sender node"
		         } else {
		             $ns trace-annotate "The Node [$node_ node-addr] having the data $avl_data"
		             $ns trace-annotate "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		             puts $search_his "The Node [$node_ node-addr] having the data $avl_data"
		             puts $search_his "The Node [$node_ node-addr] sending the data $avl_data to the sender Node"
		             set v 1
		         }
        	       }
        	   } else {
        	   	$ns trace-annotate "The data $avl_data doesn't having the Wireless Cluster Group Node [$node_ node-addr]."
        	   	puts $search_his "The data $avl_data doesn't having the Wireless Cluster Group Node [$node_ node-addr]."
        	   }
	$self sendto $size $data $BROADCAST_ADDR $sport
	puts $search_his 
    } else {
	$ns trace-annotate "The $avl_data Data redundant Search..."
	puts $search_his "The $avl_data Data redundant Search..."
    }
}

coco instproc send_message {size message_id data port} {
    $self instvar messages_seen node_
    global ns MESSAGE_PORT BROADCAST_ADDR

    lappend messages_seen $message_id
    $ns trace-annotate "Node [$node_ node-addr] is sending {$message_id:$data}"
    $self sendto $size "$message_id:$data" $BROADCAST_ADDR $port
}