include_guard()

function( target_precompiled_header _target _header _source )
	if( MSVC )
		set_target_properties( ${_target} PROPERTIES COMPILE_FLAGS "/Yu${_header}" )
		set_source_files_properties( ${_source} PROPERTIES COMPILE_FLAGS "/Yc${_header}" )
	endif()
endfunction()