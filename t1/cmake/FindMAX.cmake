FIND_PATH(MAX_INCLUDE_DIR max.h /Users/nomoshen/project/nomoshen/cmake/t1/src/lib)
FIND_LIBRARY(MAX_LIBRARY max path /Users/nomoshen/project/nomoshen/cmake/t1/lib)

message(status ${MAX_INCLUDE_DIR})
message(status ${MAX_LIBRARY})

IF(MAX_INCLUDE_DIR AND MAX_LIBRARY)
    set(MAX_FOUND true)
ENDIF(MAX_INCLUDE_DIR AND MAX_LIBRARY)

IF (MAX_FOUND)
    IF (NOT MAX_FIND_QUIETLY)
        message(STATUS "find max:${MAX_LIBRARY}")
    ENDIF(NOT MAX_FIND_QUIETLY)
ELSE (MAX_FOUND)
    IF (MAX_FIND_REQUIRED)
        MESSAGE(FATAL_ERROR "Could not find max library")
    ENDIF(MAX_FIND_REQUIRED)
endif(MAX_FOUND)

