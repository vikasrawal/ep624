
Government of India.
Data Processing Division.
National Sample Survey Division.
164, Gopal Lal Thakur Road, Kolkata-108.
Phone No. (033) 2577-1128.
---------------------------------------

NSS 59-th Round.
Final Multiplier-posted unit-level data of
Land and Livestock Holdings Survey (Schedule 18.1).


Data Files (visit 1 & visit 2 )
-----------------------------------------------------------------------
  No. of      No. of  Data             Visit Number
 records       bytes  File name
-----------------------------------------------------------------------
 
 968785   136236546  ahc81v1.txt      Visit - 1 
 402310    57575553  ahc81v2L17.txt   Visit - 2 (Levels 01 to 07 only)
                                          
-----------------------------------------------------------------------
 
 It may be noted that in Block 9 of visit 2, detailed information 
 for each of the Operational  Holdings for the entire agricultural
 year was collected. But land-area for these Operational Holdings
 was not available in Block 9, nor could it be derived from
 information of any other blocks for determining the size-class
 of Operational Holdings. In fact the information collected in
 Block 9 of visit 2 could not be checked with the information 
 available in other blocks of the visit-2 Schedule. 

 The Steering Committee of NSSO has therefore decided that the 
 Unit Level data for the Block 9 (Level-8) of visit 2 need not
 be released and that, however, in case of demand from users,
 the data of block-9 (visit-2) may be provided to them clearly
 indicating limitation of the data.
 

Multiplier files are separate for visit 1 & visit 2 as given below :

Multiplier files 
------------------------------------------------------
  No. of      No. of  Data         Visit Number     
 records       bytes  File name                
------------------------------------------------------
   10544     2256416  mlt181.v1    visit - 1 file    
                                                    
   10544     2256416  mlt181.v2    visit - 2 file      
------------------------------------------------------
These two multiplier files have common layout.

Note for users :
----------------
(1)  These are text data with fixed record-length of 142 characters.
     First 126 bytes are data, and remaining 16 bytes are multiplier
     ( weights ). 
     
(2)  The Layout of data is given in the EXCEL-file layout.xls.
     The layout of multiplier file is in MS-WORD file  multlayout.doc

(3)  The data is organised in various levels having different data
     formats.  Information regarding which block of the Schedule has
     been put into which level, is given in the file layout.xls.

(4)  For generating any estimate, one has to extract relevant portion
     of the data, and aggregate after applying the weights.

(5)  This survey is divided into 2 visits. Data and multipliers for 
     the 2 visits are totally separate.
     
(6)  Weights (or multipliers) are given at the end of each record.
     All records of a household will have same NSS-NSC-MLT figures.
     
     NSS = Bytes 127-129 (3 bytes)
     NSC = Bytes 130-132 (3 bytes)
     MLT = Bytes 133-142 (10 bytes)

     Apply weight (or multipliers) separately for 2 visits as follows :
     
     weight = MLT/200,   if NSC > NSS.
            = MLT/100,   otherwise.

(6) Common Primary Key for identification of a record for any record is

    FSU Sl. No.       = 4(5)   (i.e. offset=4th byte, length=5 bytes )
    Hamlet Group      = 29(1)
    2nd State Stratum = 30(1)
    Visit             = 31(1)
    Household Srl. No.= 32(2)	    
    Level No.         = 34(2)
    Item/Person Sl.No.= 36(5)
    
    In case of those Blocks/Levels, where Item/Person Sl.No. is not
    applicable the field is filled up with  00000.
    
(7) In the value fields (Rs. or Quantity or Area etc.) only the 
    numeric figure is given in datafile.  The decimal point is
    to be assumed after looking at the type of that field in the
    printed schedule.


List of Documents
-----------------

General Information --  Readme.txt
Text Data Layout    --  Layout.XLS
Multiplier layout   -- MultLayout

Other documents are common to all schedules of 59th round.
Those have already been sent along with 59thRd. Sch.1.0 data.
Some of these are sent again :

59ins18.1chap_3.doc  Instruction for Schedule 18.1 as given
                     in Volume 1 of instructions to field staff
59inschap_1.doc      General instructions to field staff
59sch181_v1.doc      Blank schedule 18.1 (visit 1)
59sch181_v2.doc      Blank schedule 18.1 (visit 2)
est59note-fin.doc    Note on estimation procedure
ins59_app1.doc       Appendix I
ins59_app2.doc       Appendix II
Agenda.doc           Agenda note for Steering Committee

		     ---------------

 Note : (1) f.s.u. serial numbers in records assigned false numbers to disable identity of units.
        (2) files are in ASCII format and they are flat / line sequential.
     

