############################################################################
# externals/lwm2m/LibIncludes.mk
#
#   Copyright 2021 Sony Semiconductor Solutions Corporation
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions
# are met:
#
# 1. Redistributions of source code must retain the above copyright
#    notice, this list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above copyright
#    notice, this list of conditions and the following disclaimer in
#    the documentation and/or other materials provided with the
#    distribution.
# 3. Neither the name of Sony Semiconductor Solutions Corporation nor
#    the names of its contributors may be used to endorse or promote
#    products derived from this software without specific prior written
#    permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS
# FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE
# COPYRIGHT OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT,
# INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING,
# BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS
# OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
# AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
# LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN
# ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
#
############################################################################

ifeq ($(CONFIG_EXTERNALS_LWM2M),y)
LWM2MCORDIR  = $(EXTERNAL_DIR)$(DELIM)lwm2m$(DELIM)wakaama$(DELIM)core
LWM2MSHADIR  = $(EXTERNAL_DIR)$(DELIM)lwm2m$(DELIM)wakaama$(DELIM)examples$(DELIM)shared
LWM2MCLIDIR  = $(EXTERNAL_DIR)$(DELIM)lwm2m$(DELIM)wakaama$(DELIM)examples$(DELIM)client
CFLAGS      += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" "$(LWM2MCORDIR)"}
CFLAGS      += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" "$(LWM2MSHADIR)"}
CFLAGS      += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" "$(LWM2MSHADIR)$(DELIM)tinydtls"}
CFLAGS      += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" "$(LWM2MCLIDIR)"}
CXXFLAGS    += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" "$(LWM2MCORDIR)"}
CXXFLAGS    += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" "$(LWM2MSHADIR)"}
CXXFLAGS    += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" "$(LWM2MSHADIR)$(DELIM)tinydtls"}
CXXFLAGS    += ${shell $(INCDIR) $(INCDIROPT) "$(CC)" "$(LWM2MCLIDIR)"}
endif

