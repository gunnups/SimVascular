# Hey emacs, this is a -*- makefile -*-

# Copyright (c) 2009-2011, Open Source Medical Software Corporation,
#              University of California, San Diego.
#
# All rights reserved.
#
# Portions copyright (c) 1999-2007 Stanford University,
# Nathan Wilson, Ken Wang, Charles Taylor.
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject
# to the following conditions:
#
# The above copyright notice and this permission notice shall be included
# in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
# OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
# IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
# CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
# TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
# SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

TOP=../../../../BuildWithMake

include $(TOP)/include.mk

CXXFLAGS = $(GLOBAL_CXXFLAGS) \
	   $(LOCAL_INCDIR) \
	   $(VTK_INCDIRS) \
	   $(TCLTK_INCDIR) \
           $(PYTHON_INCDIR)

MODULE_NAME = vtkSVCommon
MODULE_NAME_ALL_CAPS = VTKSVCOMMON
CXXFLAGS += -D$(MODULE_NAME)_EXPORTS
MODULE_EXPORT_FILE_H = vtkSVCommonModule.h

HDRS	= \
  vtkSVIOUtils.h \
  vtkSVGeneralUtils.h \
  vtkSVSparseMatrix.h \
  vtkSVMathUtils.h \
  vtkSVGlobals.h

CXXSRCS	= \
  vtkSVIOUtils.cxx \
  vtkSVGeneralUtils.cxx \
  vtkSVSparseMatrix.cxx \
  vtkSVMathUtils.cxx

DLLHDRS =

DLLSRCS =

DLLLIBS += $(PYTHON_LIB) $(VTK_LIBS) $(ITK_LIBS)

TARGET_LIB_NAME = $(SV_LIB_VTKSVCOMMON_NAME)

include $(TOP)/targetlib.mk
