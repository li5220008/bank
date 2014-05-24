/*==============================================================*/
/* DBMS name:      Sybase AS Enterprise 12.5.2                  */
/* Created on:     2014-5-24 16:42:43                           */
/*==============================================================*/


if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('AIFACB'))
            where name = 'FK_AIFACB_REFERENCE_CIFCIB' and type = 'RI')
   alter table AIFACB
      drop constraint FK_AIFACB_REFERENCE_CIFCIB
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('AIFACT'))
            where name = 'FK_AIFACT_REFERENCE_AIFACB' and type = 'RI')
   alter table AIFACT
      drop constraint FK_AIFACT_REFERENCE_AIFACB
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('AIFGLD'))
            where name = 'FK_AIFGLD_REFERENCE_AIFACT' and type = 'RI')
   alter table AIFGLD
      drop constraint FK_AIFGLD_REFERENCE_AIFACT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('AIFGLH'))
            where name = 'FK_AIFGLH_REFERENCE_AIFGLD' and type = 'RI')
   alter table AIFGLH
      drop constraint FK_AIFGLH_REFERENCE_AIFGLD
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('AIFLNB'))
            where name = 'FK_AIFLNB_REFERENCE_AIFACT' and type = 'RI')
   alter table AIFLNB
      drop constraint FK_AIFLNB_REFERENCE_AIFACT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('AIFOUF'))
            where name = 'FK_AIFOUF_REFERENCE_AIFACT' and type = 'RI')
   alter table AIFOUF
      drop constraint FK_AIFOUF_REFERENCE_AIFACT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('AIFPLD'))
            where name = 'FK_AIFPLD_REFERENCE_AIFACT' and type = 'RI')
   alter table AIFPLD
      drop constraint FK_AIFPLD_REFERENCE_AIFACT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('AIFPLH'))
            where name = 'FK_AIFPLH_REFERENCE_AIFPLD' and type = 'RI')
   alter table AIFPLH
      drop constraint FK_AIFPLH_REFERENCE_AIFPLD
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('AIFSTM'))
            where name = 'FK_AIFSTM_REFERENCE_AIFACT' and type = 'RI')
   alter table AIFSTM
      drop constraint FK_AIFSTM_REFERENCE_AIFACT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('AIFTDC'))
            where name = 'FK_AIFTDC_REFERENCE_AIFACT' and type = 'RI')
   alter table AIFTDC
      drop constraint FK_AIFTDC_REFERENCE_AIFACT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CIFBDT'))
            where name = 'FK_CIFBDT_REFERENCE_CIFCIB' and type = 'RI')
   alter table CIFBDT
      drop constraint FK_CIFBDT_REFERENCE_CIFCIB
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CIFCIC'))
            where name = 'FK_CIFCIC_REFERENCE_CIFCIB' and type = 'RI')
   alter table CIFCIC
      drop constraint FK_CIFCIC_REFERENCE_CIFCIB
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CIFCIP'))
            where name = 'FK_CIFCIP_REFERENCE_CIFCIB' and type = 'RI')
   alter table CIFCIP
      drop constraint FK_CIFCIP_REFERENCE_CIFCIB
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CIFIBK'))
            where name = 'FK_CIFIBK_REFERENCE_CIFCIB' and type = 'RI')
   alter table CIFIBK
      drop constraint FK_CIFIBK_REFERENCE_CIFCIB
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CIFTLR'))
            where name = 'FK_CIFTLR_REFERENCE_CIFBDT' and type = 'RI')
   alter table CIFTLR
      drop constraint FK_CIFTLR_REFERENCE_CIFBDT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('CIFVBT'))
            where name = 'FK_CIFVBT_REFERENCE_CIFBDT' and type = 'RI')
   alter table CIFVBT
      drop constraint FK_CIFVBT_REFERENCE_CIFBDT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFBUS'))
            where name = 'FK_PIFBUS_REFERENCE_PIFAPP' and type = 'RI')
   alter table PIFBUS
      drop constraint FK_PIFBUS_REFERENCE_PIFAPP
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFGLC'))
            where name = 'FK_PIFGLC_REFERENCE_PIFCCY' and type = 'RI')
   alter table PIFGLC
      drop constraint FK_PIFGLC_REFERENCE_PIFCCY
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFGLC'))
            where name = 'FK_PIFGLC_REFERENCE_PIFITM' and type = 'RI')
   alter table PIFGLC
      drop constraint FK_PIFGLC_REFERENCE_PIFITM
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFITM'))
            where name = 'FK_PIFITM_REFERENCE_PIFANC' and type = 'RI')
   alter table PIFITM
      drop constraint FK_PIFITM_REFERENCE_PIFANC
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFPDC'))
            where name = 'FK_PIFPDC_REFERENCE_PIFBUS' and type = 'RI')
   alter table PIFPDC
      drop constraint FK_PIFPDC_REFERENCE_PIFBUS
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFPLC'))
            where name = 'FK_PIFPLC_REFERENCE_PIFGLC' and type = 'RI')
   alter table PIFPLC
      drop constraint FK_PIFPLC_REFERENCE_PIFGLC
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFPRD'))
            where name = 'FK_PIFPRD_REFERENCE_PIFPDC' and type = 'RI')
   alter table PIFPRD
      drop constraint FK_PIFPRD_REFERENCE_PIFPDC
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFPRD'))
            where name = 'FK_PIFPRD_REFERENCE_PIFIRTSDD' and type = 'RI')
   alter table PIFPRD
      drop constraint FK_PIFPRD_REFERENCE_PIFIRTSDD
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFPRD'))
            where name = 'FK_PIFPRD_REFERENCE_PIFFRT' and type = 'RI')
   alter table PIFPRD
      drop constraint FK_PIFPRD_REFERENCE_PIFFRT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFPRD'))
            where name = 'FK_PIFPRD_REFERENCE_PIFXRT' and type = 'RI')
   alter table PIFPRD
      drop constraint FK_PIFPRD_REFERENCE_PIFXRT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('PIFTRX'))
            where name = 'FK_PIFTRX_REFERENCE_PIFAPP' and type = 'RI')
   alter table PIFTRX
      drop constraint FK_PIFTRX_REFERENCE_PIFAPP
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('RIFAUA'))
            where name = 'FK_RIFAUA_REFERENCE_PIFTRX' and type = 'RI')
   alter table RIFAUA
      drop constraint FK_RIFAUA_REFERENCE_PIFTRX
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('RIFCRC'))
            where name = 'FK_RIFCRC_REFERENCE_RIFQUO' and type = 'RI')
   alter table RIFCRC
      drop constraint FK_RIFCRC_REFERENCE_RIFQUO
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('RIFQUO'))
            where name = 'FK_RIFQUO_REFERENCE_CIFCIB' and type = 'RI')
   alter table RIFQUO
      drop constraint FK_RIFQUO_REFERENCE_CIFCIB
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Reference_12'))
            where name = 'FK_REFERENC_REFERENCE_AIFACT' and type = 'RI')
   alter table Reference_12
      drop constraint FK_REFERENC_REFERENCE_AIFACT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Reference_12'))
            where name = 'FK_REFERENC_REFERENCE_AIFLNB' and type = 'RI')
   alter table Reference_12
      drop constraint FK_REFERENC_REFERENCE_AIFLNB
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Reference_38'))
            where name = 'FK_REFERENC_REFERENCE_PIFIRT_S' and type = 'RI')
   alter table Reference_38
      drop constraint FK_REFERENC_REFERENCE_PIFIRT_S
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Reference_38'))
            where name = 'FK_REF' and type = 'RI')
   alter table Reference_38
      drop constraint FK_REF
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Reference_39'))
            where name = 'FK_REFERENC_REFERENCE_PIFFRT' and type = 'RI')
   alter table Reference_39
      drop constraint FK_REFERENC_REFERENCE_PIFFRT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Reference_39'))
            where name = 'FK_REFERENC_REFE' and type = 'RI')
   alter table Reference_39
      drop constraint FK_REFERENC_REFE
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Reference_40'))
            where name = 'FK_REFERENC_REFERENCE_PIFXRT' and type = 'RI')
   alter table Reference_40
      drop constraint FK_REFERENC_REFERENCE_PIFXRT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Reference_40'))
            where name = 'FK_REFERENC_REF' and type = 'RI')
   alter table Reference_40
      drop constraint FK_REFERENC_REF
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Reference_44'))
            where name = 'FK_REFERENC_REFERENCE_PIFANC' and type = 'RI')
   alter table Reference_44
      drop constraint FK_REFERENC_REFERENCE_PIFANC
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Reference_44'))
            where name = 'FK_REFERENC_REFERENCE_PIFITM' and type = 'RI')
   alter table Reference_44
      drop constraint FK_REFERENC_REFERENCE_PIFITM
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Relationship_40'))
            where name = 'FK_RELATION_RELATIONS_PIFANC' and type = 'RI')
   alter table Relationship_40
      drop constraint FK_RELATION_RELATIONS_PIFANC
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('Relationship_40'))
            where name = 'FK_RELATION_RELATIONS_PIFPLC' and type = 'RI')
   alter table Relationship_40
      drop constraint FK_RELATION_RELATIONS_PIFPLC
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('TIF999'))
            where name = 'FK_TIF999_REFERENCE_TIFJNL' and type = 'RI')
   alter table TIF999
      drop constraint FK_TIF999_REFERENCE_TIFJNL
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('TIFACM'))
            where name = 'FK_TIFACM_REFERENCE_TIFJNL' and type = 'RI')
   alter table TIFACM
      drop constraint FK_TIFACM_REFERENCE_TIFJNL
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('TIFCTR'))
            where name = 'FK_TIFCTR_REFERENCE_TIFVLT' and type = 'RI')
   alter table TIFCTR
      drop constraint FK_TIFCTR_REFERENCE_TIFVLT
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('TIFJNB'))
            where name = 'FK_TIFJNB_REFERENCE_TIFJNL' and type = 'RI')
   alter table TIFJNB
      drop constraint FK_TIFJNB_REFERENCE_TIFJNL
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('TIFJNL'))
            where name = 'FK_TIFJNL_REFERENCE_CIFTLR' and type = 'RI')
   alter table TIFJNL
      drop constraint FK_TIFJNL_REFERENCE_CIFTLR
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('TIFJNL'))
            where name = 'FK_TIFJNL_REFERENCE_TIFJNH' and type = 'RI')
   alter table TIFJNL
      drop constraint FK_TIFJNL_REFERENCE_TIFJNH
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('TIFVCH'))
            where name = 'FK_TIFVCH_REFERENCE_TIFJNL' and type = 'RI')
   alter table TIFVCH
      drop constraint FK_TIFVCH_REFERENCE_TIFJNL
go

if exists (select 1 
            from  sysobjects c 
            join  sysconstraints s on (s.constrid = c.id and s.tableid = object_id('TIFVLT'))
            where name = 'FK_TIFVLT_REFERENCE_CIFVBT' and type = 'RI')
   alter table TIFVLT
      drop constraint FK_TIFVLT_REFERENCE_CIFVBT
go

if exists(select 1 from sysindexes i where i.name = 'PK_AIFACB' and 
           (i.status2&2) = 2 and i.id = object_id('AIFACB'))
   alter table AIFACB
      drop constraint PK_AIFACB
go

if exists (select 1
            from  sysobjects
            where id = object_id('AIFACB')
            and   type = 'U')
   drop table AIFACB
go

if exists(select 1 from sysindexes i where i.name = 'PK_AIFACT' and 
           (i.status2&2) = 2 and i.id = object_id('AIFACT'))
   alter table AIFACT
      drop constraint PK_AIFACT
go

if exists (select 1
            from  sysobjects
            where id = object_id('AIFACT')
            and   type = 'U')
   drop table AIFACT
go

if exists(select 1 from sysindexes i where i.name = 'PK_AIFGLD' and 
           (i.status2&2) = 2 and i.id = object_id('AIFGLD'))
   alter table AIFGLD
      drop constraint PK_AIFGLD
go

if exists (select 1
            from  sysobjects
            where id = object_id('AIFGLD')
            and   type = 'U')
   drop table AIFGLD
go

if exists(select 1 from sysindexes i where i.name = 'PK_AIFGLH' and 
           (i.status2&2) = 2 and i.id = object_id('AIFGLH'))
   alter table AIFGLH
      drop constraint PK_AIFGLH
go

if exists (select 1
            from  sysobjects
            where id = object_id('AIFGLH')
            and   type = 'U')
   drop table AIFGLH
go

if exists(select 1 from sysindexes i where i.name = 'PK_AIFLNB' and 
           (i.status2&2) = 2 and i.id = object_id('AIFLNB'))
   alter table AIFLNB
      drop constraint PK_AIFLNB
go

if exists (select 1
            from  sysobjects
            where id = object_id('AIFLNB')
            and   type = 'U')
   drop table AIFLNB
go

if exists(select 1 from sysindexes i where i.name = 'PK_AIFOUF' and 
           (i.status2&2) = 2 and i.id = object_id('AIFOUF'))
   alter table AIFOUF
      drop constraint PK_AIFOUF
go

if exists (select 1
            from  sysobjects
            where id = object_id('AIFOUF')
            and   type = 'U')
   drop table AIFOUF
go

if exists(select 1 from sysindexes i where i.name = 'PK_AIFPLD' and 
           (i.status2&2) = 2 and i.id = object_id('AIFPLD'))
   alter table AIFPLD
      drop constraint PK_AIFPLD
go

if exists (select 1
            from  sysobjects
            where id = object_id('AIFPLD')
            and   type = 'U')
   drop table AIFPLD
go

if exists(select 1 from sysindexes i where i.name = 'PK_AIFPLH' and 
           (i.status2&2) = 2 and i.id = object_id('AIFPLH'))
   alter table AIFPLH
      drop constraint PK_AIFPLH
go

if exists (select 1
            from  sysobjects
            where id = object_id('AIFPLH')
            and   type = 'U')
   drop table AIFPLH
go

if exists(select 1 from sysindexes i where i.name = 'PK_AIFSTM' and 
           (i.status2&2) = 2 and i.id = object_id('AIFSTM'))
   alter table AIFSTM
      drop constraint PK_AIFSTM
go

if exists (select 1
            from  sysobjects
            where id = object_id('AIFSTM')
            and   type = 'U')
   drop table AIFSTM
go

if exists(select 1 from sysindexes i where i.name = 'PK_AIFTDC' and 
           (i.status2&2) = 2 and i.id = object_id('AIFTDC'))
   alter table AIFTDC
      drop constraint PK_AIFTDC
go

if exists (select 1
            from  sysobjects
            where id = object_id('AIFTDC')
            and   type = 'U')
   drop table AIFTDC
go

if exists(select 1 from sysindexes i where i.name = 'PK_CIFBDT' and 
           (i.status2&2) = 2 and i.id = object_id('CIFBDT'))
   alter table CIFBDT
      drop constraint PK_CIFBDT
go

if exists (select 1
            from  sysobjects
            where id = object_id('CIFBDT')
            and   type = 'U')
   drop table CIFBDT
go

if exists(select 1 from sysindexes i where i.name = 'PK_CIFCIB' and 
           (i.status2&2) = 2 and i.id = object_id('CIFCIB'))
   alter table CIFCIB
      drop constraint PK_CIFCIB
go

if exists (select 1
            from  sysobjects
            where id = object_id('CIFCIB')
            and   type = 'U')
   drop table CIFCIB
go

if exists(select 1 from sysindexes i where i.name = 'PK_CIFCIC' and 
           (i.status2&2) = 2 and i.id = object_id('CIFCIC'))
   alter table CIFCIC
      drop constraint PK_CIFCIC
go

if exists (select 1
            from  sysobjects
            where id = object_id('CIFCIC')
            and   type = 'U')
   drop table CIFCIC
go

if exists(select 1 from sysindexes i where i.name = 'PK_CIFCIP' and 
           (i.status2&2) = 2 and i.id = object_id('CIFCIP'))
   alter table CIFCIP
      drop constraint PK_CIFCIP
go

if exists (select 1
            from  sysobjects
            where id = object_id('CIFCIP')
            and   type = 'U')
   drop table CIFCIP
go

if exists(select 1 from sysindexes i where i.name = 'PK_CIFIBK' and 
           (i.status2&2) = 2 and i.id = object_id('CIFIBK'))
   alter table CIFIBK
      drop constraint PK_CIFIBK
go

if exists (select 1
            from  sysobjects
            where id = object_id('CIFIBK')
            and   type = 'U')
   drop table CIFIBK
go

if exists(select 1 from sysindexes i where i.name = 'PK_CIFTLR' and 
           (i.status2&2) = 2 and i.id = object_id('CIFTLR'))
   alter table CIFTLR
      drop constraint PK_CIFTLR
go

if exists (select 1
            from  sysobjects
            where id = object_id('CIFTLR')
            and   type = 'U')
   drop table CIFTLR
go

if exists(select 1 from sysindexes i where i.name = 'PK_CIFVBT' and 
           (i.status2&2) = 2 and i.id = object_id('CIFVBT'))
   alter table CIFVBT
      drop constraint PK_CIFVBT
go

if exists (select 1
            from  sysobjects
            where id = object_id('CIFVBT')
            and   type = 'U')
   drop table CIFVBT
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFANC' and 
           (i.status2&2) = 2 and i.id = object_id('PIFANC'))
   alter table PIFANC
      drop constraint PK_PIFANC
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFANC')
            and   type = 'U')
   drop table PIFANC
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFAPP' and 
           (i.status2&2) = 2 and i.id = object_id('PIFAPP'))
   alter table PIFAPP
      drop constraint PK_PIFAPP
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFAPP')
            and   type = 'U')
   drop table PIFAPP
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFBUS' and 
           (i.status2&2) = 2 and i.id = object_id('PIFBUS'))
   alter table PIFBUS
      drop constraint PK_PIFBUS
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFBUS')
            and   type = 'U')
   drop table PIFBUS
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFCCY' and 
           (i.status2&2) = 2 and i.id = object_id('PIFCCY'))
   alter table PIFCCY
      drop constraint PK_PIFCCY
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFCCY')
            and   type = 'U')
   drop table PIFCCY
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFFRT' and 
           (i.status2&2) = 2 and i.id = object_id('PIFFRT'))
   alter table PIFFRT
      drop constraint PK_PIFFRT
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFFRT')
            and   type = 'U')
   drop table PIFFRT
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFGLC' and 
           (i.status2&2) = 2 and i.id = object_id('PIFGLC'))
   alter table PIFGLC
      drop constraint PK_PIFGLC
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFGLC')
            and   type = 'U')
   drop table PIFGLC
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFIRT' and 
           (i.status2&2) = 2 and i.id = object_id('PIFIRT'))
   alter table PIFIRT
      drop constraint PK_PIFIRT
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFIRT')
            and   type = 'U')
   drop table PIFIRT
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFITM' and 
           (i.status2&2) = 2 and i.id = object_id('PIFITM'))
   alter table PIFITM
      drop constraint PK_PIFITM
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFITM')
            and   type = 'U')
   drop table PIFITM
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFPDC' and 
           (i.status2&2) = 2 and i.id = object_id('PIFPDC'))
   alter table PIFPDC
      drop constraint PK_PIFPDC
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFPDC')
            and   type = 'U')
   drop table PIFPDC
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFPLC' and 
           (i.status2&2) = 2 and i.id = object_id('PIFPLC'))
   alter table PIFPLC
      drop constraint PK_PIFPLC
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFPLC')
            and   type = 'U')
   drop table PIFPLC
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFPRD' and 
           (i.status2&2) = 2 and i.id = object_id('PIFPRD'))
   alter table PIFPRD
      drop constraint PK_PIFPRD
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFPRD')
            and   type = 'U')
   drop table PIFPRD
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFTRX' and 
           (i.status2&2) = 2 and i.id = object_id('PIFTRX'))
   alter table PIFTRX
      drop constraint PK_PIFTRX
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFTRX')
            and   type = 'U')
   drop table PIFTRX
go

if exists(select 1 from sysindexes i where i.name = 'PK_PIFXRT' and 
           (i.status2&2) = 2 and i.id = object_id('PIFXRT'))
   alter table PIFXRT
      drop constraint PK_PIFXRT
go

if exists (select 1
            from  sysobjects
            where id = object_id('PIFXRT')
            and   type = 'U')
   drop table PIFXRT
go

if exists(select 1 from sysindexes i where i.name = 'PK_RIFAUA' and 
           (i.status2&2) = 2 and i.id = object_id('RIFAUA'))
   alter table RIFAUA
      drop constraint PK_RIFAUA
go

if exists (select 1
            from  sysobjects
            where id = object_id('RIFAUA')
            and   type = 'U')
   drop table RIFAUA
go

if exists(select 1 from sysindexes i where i.name = 'PK_RIFCRC' and 
           (i.status2&2) = 2 and i.id = object_id('RIFCRC'))
   alter table RIFCRC
      drop constraint PK_RIFCRC
go

if exists (select 1
            from  sysobjects
            where id = object_id('RIFCRC')
            and   type = 'U')
   drop table RIFCRC
go

if exists(select 1 from sysindexes i where i.name = 'PK_RIFQUO' and 
           (i.status2&2) = 2 and i.id = object_id('RIFQUO'))
   alter table RIFQUO
      drop constraint PK_RIFQUO
go

if exists (select 1
            from  sysobjects
            where id = object_id('RIFQUO')
            and   type = 'U')
   drop table RIFQUO
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reference_12')
            and   name  = 'Reference_12_FK2'
            and   indid > 0
            and   indid < 255)
   drop index Reference_12.Reference_12_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reference_12')
            and   name  = 'Reference_12_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reference_12.Reference_12_FK
go

if exists(select 1 from sysindexes i where i.name = 'PK_REFERENCE_12' and 
           (i.status2&2) = 2 and i.id = object_id('Reference_12'))
   alter table Reference_12
      drop constraint PK_REFERENCE_12
go

if exists (select 1
            from  sysobjects
            where id = object_id('Reference_12')
            and   type = 'U')
   drop table Reference_12
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reference_38')
            and   name  = 'Reference_38_FK2'
            and   indid > 0
            and   indid < 255)
   drop index Reference_38.Reference_38_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reference_38')
            and   name  = 'Reference_38_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reference_38.Reference_38_FK
go

if exists(select 1 from sysindexes i where i.name = 'PK_REFERENCE_38' and 
           (i.status2&2) = 2 and i.id = object_id('Reference_38'))
   alter table Reference_38
      drop constraint PK_REFERENCE_38
go

if exists (select 1
            from  sysobjects
            where id = object_id('Reference_38')
            and   type = 'U')
   drop table Reference_38
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reference_39')
            and   name  = 'Reference_39_FK2'
            and   indid > 0
            and   indid < 255)
   drop index Reference_39.Reference_39_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reference_39')
            and   name  = 'Reference_39_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reference_39.Reference_39_FK
go

if exists(select 1 from sysindexes i where i.name = 'PK_REFERENCE_39' and 
           (i.status2&2) = 2 and i.id = object_id('Reference_39'))
   alter table Reference_39
      drop constraint PK_REFERENCE_39
go

if exists (select 1
            from  sysobjects
            where id = object_id('Reference_39')
            and   type = 'U')
   drop table Reference_39
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reference_40')
            and   name  = 'Reference_40_FK2'
            and   indid > 0
            and   indid < 255)
   drop index Reference_40.Reference_40_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reference_40')
            and   name  = 'Reference_40_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reference_40.Reference_40_FK
go

if exists(select 1 from sysindexes i where i.name = 'PK_REFERENCE_40' and 
           (i.status2&2) = 2 and i.id = object_id('Reference_40'))
   alter table Reference_40
      drop constraint PK_REFERENCE_40
go

if exists (select 1
            from  sysobjects
            where id = object_id('Reference_40')
            and   type = 'U')
   drop table Reference_40
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reference_44')
            and   name  = 'Reference_44_FK2'
            and   indid > 0
            and   indid < 255)
   drop index Reference_44.Reference_44_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Reference_44')
            and   name  = 'Reference_44_FK'
            and   indid > 0
            and   indid < 255)
   drop index Reference_44.Reference_44_FK
go

if exists(select 1 from sysindexes i where i.name = 'PK_REFERENCE_44' and 
           (i.status2&2) = 2 and i.id = object_id('Reference_44'))
   alter table Reference_44
      drop constraint PK_REFERENCE_44
go

if exists (select 1
            from  sysobjects
            where id = object_id('Reference_44')
            and   type = 'U')
   drop table Reference_44
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_40')
            and   name  = 'Relationship_40_FK2'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_40.Relationship_40_FK2
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Relationship_40')
            and   name  = 'Relationship_40_FK'
            and   indid > 0
            and   indid < 255)
   drop index Relationship_40.Relationship_40_FK
go

if exists(select 1 from sysindexes i where i.name = 'PK_RELATIONSHIP_40' and 
           (i.status2&2) = 2 and i.id = object_id('Relationship_40'))
   alter table Relationship_40
      drop constraint PK_RELATIONSHIP_40
go

if exists (select 1
            from  sysobjects
            where id = object_id('Relationship_40')
            and   type = 'U')
   drop table Relationship_40
go

if exists(select 1 from sysindexes i where i.name = 'PK_TIF999' and 
           (i.status2&2) = 2 and i.id = object_id('TIF999'))
   alter table TIF999
      drop constraint PK_TIF999
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIF999')
            and   type = 'U')
   drop table TIF999
go

if exists(select 1 from sysindexes i where i.name = 'PK_TIFACM' and 
           (i.status2&2) = 2 and i.id = object_id('TIFACM'))
   alter table TIFACM
      drop constraint PK_TIFACM
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFACM')
            and   type = 'U')
   drop table TIFACM
go

if exists(select 1 from sysindexes i where i.name = 'PK_TIFCTR' and 
           (i.status2&2) = 2 and i.id = object_id('TIFCTR'))
   alter table TIFCTR
      drop constraint PK_TIFCTR
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFCTR')
            and   type = 'U')
   drop table TIFCTR
go

if exists(select 1 from sysindexes i where i.name = 'PK_TIFJNB' and 
           (i.status2&2) = 2 and i.id = object_id('TIFJNB'))
   alter table TIFJNB
      drop constraint PK_TIFJNB
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFJNB')
            and   type = 'U')
   drop table TIFJNB
go

if exists(select 1 from sysindexes i where i.name = 'PK_TIFJNH' and 
           (i.status2&2) = 2 and i.id = object_id('TIFJNH'))
   alter table TIFJNH
      drop constraint PK_TIFJNH
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFJNH')
            and   type = 'U')
   drop table TIFJNH
go

if exists(select 1 from sysindexes i where i.name = 'PK_TIFJNL' and 
           (i.status2&2) = 2 and i.id = object_id('TIFJNL'))
   alter table TIFJNL
      drop constraint PK_TIFJNL
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFJNL')
            and   type = 'U')
   drop table TIFJNL
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFTIA')
            and   type = 'U')
   drop table TIFTIA
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFTOA')
            and   type = 'U')
   drop table TIFTOA
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFTWA')
            and   type = 'U')
   drop table TIFTWA
go

if exists(select 1 from sysindexes i where i.name = 'PK_TIFVCH' and 
           (i.status2&2) = 2 and i.id = object_id('TIFVCH'))
   alter table TIFVCH
      drop constraint PK_TIFVCH
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFVCH')
            and   type = 'U')
   drop table TIFVCH
go

if exists(select 1 from sysindexes i where i.name = 'PK_TIFVLT' and 
           (i.status2&2) = 2 and i.id = object_id('TIFVLT'))
   alter table TIFVLT
      drop constraint PK_TIFVLT
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFVLT')
            and   type = 'U')
   drop table TIFVLT
go

if exists(select 1 from sysindexes i where i.name = 'PK_TIFVMB' and 
           (i.status2&2) = 2 and i.id = object_id('TIFVMB'))
   alter table TIFVMB
      drop constraint PK_TIFVMB
go

if exists (select 1
            from  sysobjects
            where id = object_id('TIFVMB')
            and   type = 'U')
   drop table TIFVMB
go

if exists(select 1 from sysindexes i where i.name = 'PK_ACCOUNT_BALANCE' and 
           (i.status2&2) = 2 and i.id = object_id('account_balance'))
   alter table account_balance
      drop constraint PK_ACCOUNT_BALANCE
go

if exists (select 1
            from  sysobjects
            where id = object_id('account_balance')
            and   type = 'U')
   drop table account_balance
go

if exists(select 1 from sysindexes i where i.name = 'PK_ACCOUNT_FLAG' and 
           (i.status2&2) = 2 and i.id = object_id('account_flag'))
   alter table account_flag
      drop constraint PK_ACCOUNT_FLAG
go

if exists (select 1
            from  sysobjects
            where id = object_id('account_flag')
            and   type = 'U')
   drop table account_flag
go

if exists(select 1 from sysindexes i where i.name = 'PK_ACCRUE_PARAMS' and 
           (i.status2&2) = 2 and i.id = object_id('accrue_params'))
   alter table accrue_params
      drop constraint PK_ACCRUE_PARAMS
go

if exists (select 1
            from  sysobjects
            where id = object_id('accrue_params')
            and   type = 'U')
   drop table accrue_params
go

if exists(select 1 from sysindexes i where i.name = 'PK_ACCRUE_SOURCE' and 
           (i.status2&2) = 2 and i.id = object_id('accrue_source'))
   alter table accrue_source
      drop constraint PK_ACCRUE_SOURCE
go

if exists (select 1
            from  sysobjects
            where id = object_id('accrue_source')
            and   type = 'U')
   drop table accrue_source
go

if exists(select 1 from sysindexes i where i.name = 'PK_ACCT_CONTROL' and 
           (i.status2&2) = 2 and i.id = object_id('acct_control'))
   alter table acct_control
      drop constraint PK_ACCT_CONTROL
go

if exists (select 1
            from  sysobjects
            where id = object_id('acct_control')
            and   type = 'U')
   drop table acct_control
go

if exists(select 1 from sysindexes i where i.name = 'PK_ACCT_OPEN' and 
           (i.status2&2) = 2 and i.id = object_id('acct_open'))
   alter table acct_open
      drop constraint PK_ACCT_OPEN
go

if exists (select 1
            from  sysobjects
            where id = object_id('acct_open')
            and   type = 'U')
   drop table acct_open
go

if exists(select 1 from sysindexes i where i.name = 'PK_BANK_CAR' and 
           (i.status2&2) = 2 and i.id = object_id('bank_car'))
   alter table bank_car
      drop constraint PK_BANK_CAR
go

if exists (select 1
            from  sysobjects
            where id = object_id('bank_car')
            and   type = 'U')
   drop table bank_car
go

if exists(select 1 from sysindexes i where i.name = 'PK_COUNTRY_CODE' and 
           (i.status2&2) = 2 and i.id = object_id('country_code'))
   alter table country_code
      drop constraint PK_COUNTRY_CODE
go

if exists (select 1
            from  sysobjects
            where id = object_id('country_code')
            and   type = 'U')
   drop table country_code
go

if exists(select 1 from sysindexes i where i.name = 'PK_CUS_RELATIONS' and 
           (i.status2&2) = 2 and i.id = object_id('cus_relations'))
   alter table cus_relations
      drop constraint PK_CUS_RELATIONS
go

if exists (select 1
            from  sysobjects
            where id = object_id('cus_relations')
            and   type = 'U')
   drop table cus_relations
go

if exists(select 1 from sysindexes i where i.name = 'PK_EXCHANGE_RECEIPTS' and 
           (i.status2&2) = 2 and i.id = object_id('exchange_receipts'))
   alter table exchange_receipts
      drop constraint PK_EXCHANGE_RECEIPTS
go

if exists (select 1
            from  sysobjects
            where id = object_id('exchange_receipts')
            and   type = 'U')
   drop table exchange_receipts
go

if exists(select 1 from sysindexes i where i.name = 'PK_EXG_TRE_PRT' and 
           (i.status2&2) = 2 and i.id = object_id('exg_tre_prt'))
   alter table exg_tre_prt
      drop constraint PK_EXG_TRE_PRT
go

if exists (select 1
            from  sysobjects
            where id = object_id('exg_tre_prt')
            and   type = 'U')
   drop table exg_tre_prt
go

if exists(select 1 from sysindexes i where i.name = 'PK_HOLIDAY_CODE' and 
           (i.status2&2) = 2 and i.id = object_id('holiday_code'))
   alter table holiday_code
      drop constraint PK_HOLIDAY_CODE
go

if exists (select 1
            from  sysobjects
            where id = object_id('holiday_code')
            and   type = 'U')
   drop table holiday_code
go

if exists(select 1 from sysindexes i where i.name = 'PK_PRICE_CERTIFICATE' and 
           (i.status2&2) = 2 and i.id = object_id('price_certificate'))
   alter table price_certificate
      drop constraint PK_PRICE_CERTIFICATE
go

if exists (select 1
            from  sysobjects
            where id = object_id('price_certificate')
            and   type = 'U')
   drop table price_certificate
go

if exists(select 1 from sysindexes i where i.name = 'PK_PUBLIC_CODE' and 
           (i.status2&2) = 2 and i.id = object_id('public_code'))
   alter table public_code
      drop constraint PK_PUBLIC_CODE
go

if exists (select 1
            from  sysobjects
            where id = object_id('public_code')
            and   type = 'U')
   drop table public_code
go

if exists(select 1 from sysindexes i where i.name = 'PK_TB_USER' and 
           (i.status2&2) = 2 and i.id = object_id('tb_user'))
   alter table tb_user
      drop constraint PK_TB_USER
go

if exists (select 1
            from  sysobjects
            where id = object_id('tb_user')
            and   type = 'U')
   drop table tb_user
go

if exists(select 1 from sysindexes i where i.name = 'PK_TICKET_DATUM' and 
           (i.status2&2) = 2 and i.id = object_id('ticket_datum'))
   alter table ticket_datum
      drop constraint PK_TICKET_DATUM
go

if exists (select 1
            from  sysobjects
            where id = object_id('ticket_datum')
            and   type = 'U')
   drop table ticket_datum
go

if exists(select 1 from sysindexes i where i.name = 'PK_TRADE_CLASSIFY' and 
           (i.status2&2) = 2 and i.id = object_id('trade_classify'))
   alter table trade_classify
      drop constraint PK_TRADE_CLASSIFY
go

if exists (select 1
            from  sysobjects
            where id = object_id('trade_classify')
            and   type = 'U')
   drop table trade_classify
go

if exists(select 1 from sysindexes i where i.name = 'PK_TRN_ACT_CLF' and 
           (i.status2&2) = 2 and i.id = object_id('trn_act_clf'))
   alter table trn_act_clf
      drop constraint PK_TRN_ACT_CLF
go

if exists (select 1
            from  sysobjects
            where id = object_id('trn_act_clf')
            and   type = 'U')
   drop table trn_act_clf
go

/*==============================================================*/
/* Table: AIFACB                                                */
/*==============================================================*/
create table AIFACB (
   BAS_ACN              char(14)                       not null,
   CUS_IDT              char(9)                        not null,
   ACT_NUM              char(5)                        null,
   BUS_CDE              char(3)                        null,
   ACT_SEQ              char(2)                        null,
   DBC_NUM              char(19)                       null,
   ACT_NAM              varchar(120)                   null,
   OPN_ORG              char(7)                        null,
   OPN_BRA              char(5)                        null,
   OPN_DEP              char(2)                        null,
   ACT_TYP              char(2)                        null,
   AGR_TYP              char(1)                        null,
   AGR_NUM              char(20)                       null,
   AGR_DAT              date                           null,
   AGR_FLG              char(1)                        null,
   OFS_FLG              char(1)                        null,
   CSH_FLG              char(1)                        null,
   CQB_FLG              char(1)                        null,
   IBA_FLG              char(1)                        null,
   PAY_TYP              char(1)                        null,
   FEE_FLG              char(1)                        null,
   SMY_CYC              char(1)                        null,
   FRE_TAX              char(1)                        null,
   VCH_TYP              char(1)                        null,
   PSK_DAT              date                           null,
   PSK_SEQ              smallint                       null,
   PBK_NUM              char(8)                        null,
   PSK_BKN              numeric(2,0)                   null,
   PSK_LIN              numeric(3,0)                   null,
   PSK_LDT              date                           null,
   TOT_TDP              numeric(3,0)                   null,
   OPN_DAT              date                           null,
   OPN_TYP              char(2)                        null,
   OPN_IDT              varchar(20)                    null,
   ACT_STS              char(1)                        null,
   REG_STS              char(1)                        null,
   FRZ_STS              char(1)                        null,
   DOR_TYP              char(1)                        null,
   DOR_DAT              date                           null,
   HLD_DAT              date                           null,
   CLS_ORG              char(7)                        null,
   CLS_BRA              char(5)                        null,
   CLS_DEP              char(2)                        null,
   CLS_JRN              char(9)                        null,
   CLS_DATE             date                           null,
   ACT_OFR              char(6)                        null,
   LTX_JNL              char(9)                        null,
   LTX_DAT              date                           null,
   LTX_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table AIFACB
   add constraint PK_AIFACB primary key (BAS_ACN)
go

/*==============================================================*/
/* Table: AIFACT                                                */
/*==============================================================*/
create table AIFACT (
   ACT_ACN              char(20)                       not null,
   BAS_ACN              char(14)                       null,
   CUR_CDE              numeric(2,0)                   null,
   ITM_CDE              numeric(4,0)                   null,
   CUS_IDT              char(9)                        null,
   ACT_NUM              char(5)                        null,
   BUS_CDE              char(3)                        null,
   ACT_SEQ              char(3)                        null,
   LST_BAL              decimal(13,3)                  null,
   BOK_BAL              decimal(13,3)                  null,
   AVA_BAL              decimal(13,3)                  null,
   DIF_BAL              decimal(13,3)                  null,
   CIF_BAL              decimal(13,3)                  null,
   HLD_BAL              decimal(13,3)                  null,
   BAL_LIM              decimal(13,3)                  null,
   OVE_LIM              decimal(13,3)                  null,
   OVE_EXP              date                           null,
   WDR_LIM              decimal(13,3)                  null,
   WDD_AMT              decimal(13,3)                  null,
   DAY_FBL              decimal(13,3)                  null,
   OTH_BAL              decimal(13,3)                  null,
   FEE_BAL              decimal(13,3)                  null,
   TEM_BAL              decimal(13,3)                  null,
   DDR_AMT              decimal(13,3)                  null,
   DCR_AMT              decimal(13,3)                  null,
   DDR_CNT              decimal(13,3)                  null,
   DCR_CNT              decimal(13,3)                  null,
   MDR_AMT              decimal(15,3)                  null,
   MCR_AMT              decimal(15,3)                  null,
   MDR_CNT              decimal(15,3)                  null,
   MCR_CNT              decimal(15,3)                  null,
   YDR_AMT              decimal(15,3)                  null,
   YCR_AMT              decimal(15,3)                  null,
   YDR_CNT              decimal(15,3)                  null,
   YCR_CNT              decimal(15,3)                  null,
   MAV_BAL              decimal(15,3)                  null,
   YAV_BAL              decimal(13,3)                  null,
   INT_FLG              char(2)                        null,
   INT_CYC              char(1)                        null,
   DIN_RAT              char(3)                        null,
   CIN_RAT              char(3)                        null,
   DRATSF               decimal(9,6)                   null,
   CRATSF               decimal(9,6)                   null,
   RIN_RAT              decimal(9,6)                   null,
   INT_CLA              char(2)                        null,
   INT_SPR              decimal(9,6)                   null,
   INT_TRA              char(20)                       null,
   LIN_DAT              date                           null,
   INH_DAT              date                           null,
   DRA_ACC              decimal(17,3)                  null,
   CRA_ACC              decimal(17,3)                  null,
   REL_ACC              decimal(17,3)                  null,
   DAC_INT              decimal(13,3)                  null,
   CAC_INT              decimal(13,3)                  null,
   DAM_INT              decimal(13,3)                  null,
   CAM_INT              decimal(13,3)                  null,
   OPN_DAT              date                           null,
   LEN_DAT              date                           null,
   LTX_TLR              char(6)                        null,
   LTX_JNL              char(10)                       null,
   REC_STS              char(1)                        null,
   GLC_CDE              char(6)                        null,
   OPN_BRA              char(5)                        null,
   PLC_CDE              char(8)                        null,
   PLC_DEP              char(7)                        null,
   PRD_CDE              char(6)                        null,
   STA_CDE              char(5)                        null
)
with identity_gap = 1
go

alter table AIFACT
   add constraint PK_AIFACT primary key (ACT_ACN)
go

/*==============================================================*/
/* Table: AIFGLD                                                */
/*==============================================================*/
create table AIFGLD (
   GLD_KEY              char(11)                       not null,
   ACT_ACN              char(20)                       not null,
   ORG_IDT              char(5)                        null,
   GLC_CDE              char(6)                        null,
   GLC_ITM              char(4)                        null,
   GLC_CCY              char(2)                        null,
   DBR_AMT              decimal(15,3)                  null,
   CRE_AMT              decimal(15,3)                  null,
   DBR_CUT              decimal(7,0)                   null,
   CRE_CNT              decimal(7,0)                   null,
   DBR_BAL              decimal(15,3)                  null,
   CRE_BAL              decimal(15,3)                  null,
   DBR_LBL              decimal(15,3)                  null,
   CRE_LBL              decimal(15,3)                  null,
   CRE_DAT              date                           null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table AIFGLD
   add constraint PK_AIFGLD primary key (GLD_KEY)
go

/*==============================================================*/
/* Table: AIFGLH                                                */
/*==============================================================*/
create table AIFGLH (
   GLC_KEY              char(20)                       not null,
   GLD_KEY              char(11)                       null,
   REC_TYP              char(1)                        null,
   GLC_DAT              char(8)                        null,
   ORG_IDT              char(5)                        null,
   GLC_CDE              char(6)                        null,
   GLC_ITM              char(4)                        null,
   GLC_CCY              char(2)                        null,
   DBR_AMT              decimal(15,3)                  null,
   CRE_AMT              decimal(15,3)                  null,
   DBR_CUT              decimal(7,0)                   null,
   CRE_CNT              decimal(7,0)                   null,
   DBR_BAL              decimal(15,3)                  null,
   CRE_BAL              decimal(15,3)                  null,
   DBR_LBL              decimal(15,3)                  null,
   CRE_LBL              decimal(15,3)                  null,
   DBR_VBL              decimal(15,3)                  null,
   CRE_VBL              decimal(15,3)                  null,
   CRE_DAT              date                           null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table AIFGLH
   add constraint PK_AIFGLH primary key (GLC_KEY)
go

/*==============================================================*/
/* Table: AIFLNB                                                */
/*==============================================================*/
create table AIFLNB (
   LON_BKN              char(12)                       not null,
   ACT_ACN              char(20)                       null,
   LON_NUM              char(10)                       null,
   LON_SEQ              numeric(2)                     null,
   NXT_SEQ              numeric(2)                     null,
   LON_ACN              char(20)                       null,
   FUN_CDE              char(6)                        null,
   OLD_ITM              char(4)                        null,
   LMT_NUM              char(4)                        null,
   LON_TYP              char(1)                        null,
   LOA_FRM              char(1)                        null,
   APR_DAT              date                           null,
   LON_DAE              date                           null,
   ACT_DAT              date                           null,
   DUE_DAT              date                           null,
   REP_FLG              char(1)                        null,
   EXT_FLG              char(1)                        null,
   EXT_NUM              numeric(2)                     null,
   LEX_DAT              date                           null,
   CHG_FLG              char(1)                        null,
   LON_AMT              decimal(15,3)                  null,
   MEM_PER              decimal(3,2)                   null,
   MEM_AMT              decimal(15,3)                  null,
   LON_BAL              decimal(15,3)                  null,
   INT_BAL              decimal(15,2)                  null,
   DBR_RAT              decimal(9,6)                   null,
   RAT_DAT              date                           null,
   INT_REC              decimal(13,3)                  null,
   ADJ_INT              decimal(13,3)                  null,
   TMP_INT              decimal(13,3)                  null,
   STP_IFG              char(1)                        null,
   INT_DAT              date                           null,
   PRE_INT              decimal(13,3)                  null,
   PRE_DAT              date                           null,
   INT_OUT              decimal(13,3)                  null,
   FEE_RAT              decimal(9,6)                   null,
   TAX_RAT              decimal(9,6)                   null,
   TSF_DAT              datetime                       null,
   DEB_ACN              char(20)                       null,
   GUA_ACN              char(20)                       null,
   FUN_ACN              char(20)                       null,
   HNG_ACN              char(20)                       null,
   HNG_NUM              char(6)                        null,
   HNG_AMT              decimal(15,3)                  null,
   HNG_IAC              char(20)                       null,
   HNG_INO              char(8)                        null,
   HNG_IAM              decimal(15,3)                  null,
   DEB_PRD              char(3)                        null,
   DEB_UNI              char(1)                        null,
   DEB_PDD              char(2)                        null,
   FST_PDT              date                           null,
   TOT_TRM              numeric(5)                     null,
   BEG_TRM              numeric(5)                     null,
   PAR_TRM              numeric(5)                     null,
   RTN_TYP              char(1)                        null,
   CUR_RTR              numeric(5)                     null,
   CUR_VDT              date                           null,
   CUR_IDT              date                           null,
   RTN_TRM              numeric(5)                     null,
   VAL_IDT              date                           null,
   DUE_IDT              date                           null,
   LTX_JNL              char(9)                        null,
   LTX_DAT              date                           null,
   LTX_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table AIFLNB
   add constraint PK_AIFLNB primary key (LON_BKN)
go

/*==============================================================*/
/* Table: AIFOUF                                                */
/*==============================================================*/
create table AIFOUF (
   OUT_NUM              char(26)                       not null,
   ACT_ACN              char(20)                       null,
   OUF_SEQ              numeric(6,0)                   null,
   OST_AMT              decimal(15,3)                  null,
   BOK_DAT              date                           null,
   BOK_VCH              char(10)                       null,
   REG_NUM              char(20)                       null,
   BOK_REM              char(32)                       null,
   CRS_DUR              numeric(3,0)                   null,
   BOK_AUT              char(6)                        null,
   BOK_ANO              numeric(6,0)                   null,
   CRS_DAT              date                           null,
   CRS_VCH              char(10)                       null,
   CRS_AUT              char(6)                        null,
   CRS_ANO              numeric(6,0)                   null,
   CRS_REM              char(32)                       null,
   REF_NUM              numeric(6,0)                   null,
   LTX_JNL              char(9)                        null,
   LTX_DAT              date                           null,
   LTX_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table AIFOUF
   add constraint PK_AIFOUF primary key (OUT_NUM)
go

/*==============================================================*/
/* Table: AIFPLD                                                */
/*==============================================================*/
create table AIFPLD (
   PLD_KEY              char(15)                       not null,
   ACT_ACN              char(20)                       null,
   BDT_IDT              char(7)                        null,
   PLC_CDE              char(8)                        null,
   GLC_CDE              char(6)                        null,
   PLS_CDE              char(2)                        null,
   DBR_AMT              decimal(15,3)                  null,
   CRE_AMT              decimal(15,3)                  null,
   DBR_CUT              decimal(7,0)                   null,
   CRE_CNT              decimal(7,0)                   null,
   DBR_BAL              decimal(15,3)                  null,
   CRE_BAL              decimal(15,3)                  null,
   DBR_LBL              decimal(15,3)                  null,
   CRE_LBL              decimal(15,3)                  null,
   CRE_DAT              date                           null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table AIFPLD
   add constraint PK_AIFPLD primary key (PLD_KEY)
go

/*==============================================================*/
/* Table: AIFPLH                                                */
/*==============================================================*/
create table AIFPLH (
   PLH_KEY              char(24)                       not null,
   PLD_KEY              char(15)                       null,
   REC_TYP              char(1)                        null,
   GLC_DAT              char(8)                        null,
   BDT_IDT              char(7)                        null,
   PLC_CDE              char(8)                        null,
   GLC_CDE              char(6)                        null,
   PLS_CDE              char(2)                        null,
   DBR_AMT              decimal(15,3)                  null,
   CRE_AMT              decimal(15,3)                  null,
   DBR_CUT              decimal(7,0)                   null,
   CRE_CNT              decimal(7,0)                   null,
   DBR_BAL              decimal(15,3)                  null,
   CRE_BAL              decimal(15,3)                  null,
   DBR_LBL              decimal(15,3)                  null,
   CRE_LBL              decimal(15,3)                  null,
   DBR_VBL              decimal(15,3)                  null,
   CRE_VBL              decimal(15,3)                  null,
   CRE_DAT              datetime                       null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table AIFPLH
   add constraint PK_AIFPLH primary key (PLH_KEY)
go

/*==============================================================*/
/* Table: AIFSTM                                                */
/*==============================================================*/
create table AIFSTM (
   STM_STP              char(36)                       not null,
   ACT_ACN              char(20)                       not null,
   CUR_CDE              char(2)                        null,
   ITM_CDE              char(4)                        null,
   BAS_ACN              char(14)                       null,
   CUS_IDT              char(9)                        null,
   ACT_NUM              char(5)                        null,
   STM_DAT              char(8)                        null,
   STM_TIM              char(8)                        null,
   VCH_NUM              numeric(12)                    null,
   JNL_NUM              numeric(9)                     null,
   TRX_BDT              char(7)                        null,
   TLR_NUM              varchar(4)                     null,
   TRX_AMT              decimal(15,3)                  null,
   ACT_BAL              decimal(15,3)                  null,
   LAS_BAL              decimal(15,3)                  null,
   VAL_DAT              date                           null,
   RVS_LBL              char(1)                        null,
   OUR_REF              char(29)                       null,
   FUR_INF              char(32)                       null,
   ANA_CDE              char(5)                        null,
   SEC_CCY              char(2)                        null,
   SEC_AMT              decimal(15,3)                  null,
   SEC_BAL              decimal(15,3)                  null,
   SEC_LBA              decimal(15,3)                  null,
   FXR_RAT              decimal(12,6)                  null,
   REC_STS              char(1)                        null,
   OUR_REFs             char(24)                       null,
   TXN_BDT              char(7)                        null,
   TRX_PRD              char(17)                       null
)
with identity_gap = 1
go

alter table AIFSTM
   add constraint PK_AIFSTM primary key (STM_STP)
go

/*==============================================================*/
/* Table: AIFTDC                                                */
/*==============================================================*/
create table AIFTDC (
   TDC_NUM              char(24)                       not null,
   ACT_ACN              char(20)                       not null,
   DEP_SEQ              numeric(4)                     null,
   DEP_TYP              char(2)                        null,
   CCY_CDE              char(2)                        null,
   CCY_TYP              char(1)                        null,
   BAL_AMT              decimal(15,3)                  null,
   PER_TRM              char(4)                        null,
   INT_RAT              decimal(9,6)                   null,
   OPN_DAE              date                           null,
   VAL_DAT              date                           null,
   DUE_DAT              date                           null,
   CLS_DAT              date                           null,
   VCH_NUM              char(8)                        null,
   BOK_LIN              char(5)                        null,
   BOK_NUM              numeric(2,0)                   null,
   LIN_NUM              numeric(3,0)                   null,
   BAL_ACN              char(2)                        null,
   INT_SPR              decimal(9,6)                   null,
   INT_FLG              char(1)                        null,
   DUE_INT              decimal(13,3)                  null,
   DRW_INT              decimal(13,3)                  null,
   BUD_INT              decimal(13,3)                  null,
   BUD_DAT              date                           null,
   INT_DAT              date                           null,
   FST_DAT              date                           null,
   INT_CYC              char(2)                        null,
   PAR_NUM              numeric(1,0)                   null,
   PRO_SEQ              numeric(2,0)                   null,
   RNW_CDE              char(1)                        null,
   HLD_DAT              date                           null,
   OPN_ORG              char(5)                        null,
   CLS_ORG              char(5)                        null,
   OPN_MMO              varchar(30)                    null,
   CLS_MMO              varchar(30)                    null,
   OPN_REF              char(6)                        null,
   CLS_REF              char(6)                        null,
   LTX_JNL              char(9)                        null,
   LTX_DAT              date                           null,
   LTX_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table AIFTDC
   add constraint PK_AIFTDC primary key (TDC_NUM)
go

/*==============================================================*/
/* Table: CIFBDT                                                */
/*==============================================================*/
create table CIFBDT (
   BDT_TDT              char(7)                        not null,
   CUS_IDT              char(9)                        null,
   ORG_IDT              char(5)                        null,
   CIT_CDE              char(2)                        null,
   NET_CDE              char(3)                        null,
   DEP_NUM              numeric(2)                     null,
   BDT_NAM              char(34)                       null,
   BDT_ENM              varchar(34)                    null,
   BDT_TYP              char(2)                        null,
   BDT_FEA              char(1)                        null,
   SUP_BDT              char(7)                        null,
   CIF_SCU_IDT          char(9)                        null,
   MAN_TLR              char(6)                        null,
   TLR_CNT              numeric(5)                     null,
   IBK_CDE              char(6)                        null,
   EBK_CDE              char(4)                        null,
   OPN_DAT              date                           null,
   ACT_DAT              date                           null,
   TLR_TXB              binary(50)                     null,
   TXN_APP              char(3)                        null,
   TXN_TYP              char(4)                        null,
   TXN_CLS              nchar(1)                       null,
   NGT_CNT              numeric(3,0)                   null,
   ONL_CNT              numeric(3,0)                   null,
   ACT_FLG              char(1)                        null,
   CAH_FLG              numeric(2)                     null,
   IND_FLG              char(1)                        null,
   CRS_FLG              char(1)                        null,
   FTX_FLG              char(1)                        null,
   CHK_FLG              char(1)                        null,
   HLD_FLG              char(1)                        null,
   OPR_FLG              char(1)                        null,
   EOY_DDM              date                           null,
   OST_REF              numeric(6)                     null,
   TAX_NUM              numeric(3)                     null,
   RSV_FG1              char(1)                        null,
   RSV_FG2              char(1)                        null,
   RSV_RF1              numeric(6)                     null,
   RSV_RF2              numeric(6)                     null,
   SEV_NUM              char(7)                        null,
   SEV_FLG              char(4)                        null,
   SEV_ADR              char(7)                        null,
   SEV_NAM              char(20)                       null,
   UPT_DAT              date                           null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null,
   CRE_PLA              decimal(15,3)                  null
)
with identity_gap = 1
go

alter table CIFBDT
   add constraint PK_CIFBDT primary key (BDT_TDT)
go

/*==============================================================*/
/* Table: CIFCIB                                                */
/*==============================================================*/
create table CIFCIB (
   CUS_IDT              char(9)                        not null,
   CUS_KND              char(1)                        null,
   CUS_NUM              char(7)                        null,
   CUS_CHK              char(1)                        null,
   PAS_TPY              char(2)                        null,
   PAS_NUM              char(30)                       null,
   PAS_EXP              date                           null,
   PAS_RGN              varchar(40)                    null,
   CHN_NAM              varchar(60)                    null,
   SHT_NAM              varchar(16)                    null,
   ENG_NAM              varchar(120)                   null,
   CUS_ADR              varchar(120)                   null,
   CUS_ZIP              char(6)                        null,
   TEL_NUM              char(18)                       null,
   FAX_NUM              char(10)                       null,
   MBI_NUM              char(16)                       null,
   EMA_ADR              varchar(40)                    null,
   WEB_ADR              varchar(60)                    null,
   CUS_MGR              char(6)                        null,
   CUS_STS              char(40)                       null,
   STS_EXP              datetime                       null,
   CUS_RMK              char(60)                       null,
   CRE_DAT              datetime                       null,
   CRE_ORG              char(5)                        null,
   CRE_TLR              char(6)                        null,
   UPT_DAT              datetime                       null,
   UPT_ORG              char(5)                        null,
   UPT_TLR              char(6)                        null,
   AUT_TLR              char(6)                        null,
   UPD_JRN              numeric(7)                     null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table CIFCIB
   add constraint PK_CIFCIB primary key nonclustered (CUS_IDT)
go

/*==============================================================*/
/* Table: CIFCIC                                                */
/*==============================================================*/
create table CIFCIC (
   COS_IDT              char(9)                        not null,
   CUS_IDT              char(9)                        null,
   SND_PAS              char(32)                       not null,
   PAS_TP2              char(2)                        null,
   PAS_NM2              char(30)                       null,
   PAS_EXP              date                           null,
   SHT_NAM              nvarchar(16)                   null,
   ENG_NAM              nvarchar(120)                  null,
   OPR_CTR              char(3)                        null,
   BUS_ADR              varchar(30)                    null,
   BUS_ZIP              char(6)                        null,
   ENG_AD1              char(35)                       null,
   ENG_AD2              char(35)                       null,
   END_AD3              char(35)                       null,
   END_AD4              char(35)                       null,
   END_AD5              char(35)                       null,
   CUS_TYP              char(2)                        null,
   IND_TYP              char(2)                        null,
   ECO_TYP              char(2)                        null,
   LOC_CAP              decimal(15,3)                  null,
   REG_CAP              decimal(15,3)                  null,
   REG_CCY              char(2)                        null,
   REG_ADR              varchar(60)                    null,
   REG_DAT              date                           null,
   EFF_DUR              numeric(8,0)                   null,
   RSD_CTR              char(3)                        null,
   CTX_NUM              char(15)                       null,
   LTX_NUM              char(15)                       null,
   TAX_EXP              numeric(8,0)                   null,
   FXI_NUM              char(30)                       null,
   FXI_EXP              decimal(8,0)                   null,
   INV_CNY              char(3)                        null,
   COM_PER              varchar(20)                    null,
   RSP_PER              varchar(20)                    null,
   ESP_IDT              char(2)                        null,
   RES_IDN              varchar(30)                    null,
   SUP_UNI              varchar(60)                    null,
   REG_NUM              char(20)                       null,
   BAS_BAK              varchar(50)                    null,
   BAS_ACT              varchar(30)                    null,
   OPN_IDT              char(20)                       null,
   CUS_CA1              char(2)                        null,
   CUS_CA2              char(2)                        null,
   CUS_CA3              char(2)                        null,
   CUS_CA4              char(2)                        null,
   CUS_CLS              char(2)                        null,
   CUS_REL              char(2)                        null,
   GRP_CDE              char(8)                        null,
   RSK_GRP              char(8)                        null,
   REL_CUS              char(9)                        null,
   TST_RNK              char(8)                        null,
   CRE_LIM              decimal(15,3)                  null,
   AST_TOT              decimal(15,3)                  null,
   LTA_TOT              decimal(15,3)                  null,
   RES_FD1              char(60)                       null,
   RES_FD2              char(60)                       null,
   RES_FD3              char(60)                       null,
   RES_FD4              char(60)                       null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table CIFCIC
   add constraint PK_CIFCIC primary key (COS_IDT)
go

/*==============================================================*/
/* Table: CIFCIP                                                */
/*==============================================================*/
create table CIFCIP (
   PER_IDF              char(9)                        not null,
   CUS_IDT              char(9)                        null,
   CHN_NAM              varchar(20)                    null,
   PRE_CNA              varchar(20)                    null,
   PRE_ENA              varchar(70)                    null,
   AGT_NAM              varchar(20)                    null,
   PAS_TP2              char(2)                        null,
   PAS_NM2              char(30)                       null,
   PER_SEX              char(1)                        null,
   PPL_COD              char(2)                        null,
   MAR_STS              char(1)                        null,
   EDU_LVL              char(1)                        null,
   JOB_NAT              char(2)                        null,
   JOB_POS              char(2)                        null,
   JOB_TIT              char(2)                        null,
   WRK_UNT              varchar(40)                    null,
   UNT_TEL              char(16)                       null,
   UNT_ADR              varchar(128)                   null,
   MIA_INC              char(16)                       null,
   OTA_INC              char(16)                       null,
   MTH_INC              numeric(7,0)                   null,
   OTH_INC              numeric(7,0)                   null,
   HOU_STS              char(1)                        null,
   INS_STS              char(16)                       null,
   DEP_NUM              numeric(2,0)                   null,
   CUS_CA1              char(2)                        null,
   CUS_CA2              char(2)                        null,
   CUS_CA3              char(2)                        null,
   CUS_CA4              char(2)                        null,
   CUS_CLS              char(2)                        null,
   CUS_REL              char(9)                        null,
   SRV_CLS              char(1)                        null,
   TST_RNK              char(1)                        null,
   CRE_LIM              decimal(15,3)                  null,
   AST_TOT              numeric(15,3)                  null,
   LIA_TOT              numeric(15,3)                  null,
   CUS_STS              char(40)                       null,
   STS_EXP              datetime                       null,
   PER_PSW              char(6)                        null,
   PSW_LDT              datetime                       null,
   TAX_NUM              char(20)                       null,
   INS_CDE              char(20)                       null,
   CRT_TMS              numeric(2)                     null,
   BIR_DAT              datetime                       null,
   BEA_DAT              datetime                       null,
   BKR_DAT              datetime                       null,
   RES_FD1              char(60)                       null,
   RES_FD2              char(60)                       null,
   RES_FD3              char(60)                       null,
   RES_FD4              char(60)                       null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table CIFCIP
   add constraint PK_CIFCIP primary key (PER_IDF)
go

/*==============================================================*/
/* Table: CIFIBK                                                */
/*==============================================================*/
create table CIFIBK (
   IBK_IDT              char(6)                        not null,
   CUS_IDT              char(9)                        null,
   SBK_CDE              char(2)                        null,
   IBK_NUM              char(4)                        null,
   IBK_NAM              char(34)                       null,
   CLR_NUM              char(6)                        null,
   SWF_CDE              char(11)                       null,
   IBK_ADD              nvarchar(50)                   null,
   POS_CDE              char(6)                        null,
   TEL_NUM              char(18)                       null,
   TEL_EXN              char(10)                       null,
   WEB_ADD              char(60)                       null,
   IBK_CLA              char(1)                        null,
   PSB_NUM              char(5)                        null,
   SUP_BAK              char(5)                        null,
   RSV_FG1              char(1)                        null,
   RSV_FG2              char(1)                        null,
   UPT_DAT              datetime                       null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table CIFIBK
   add constraint PK_CIFIBK primary key nonclustered (IBK_IDT)
go

/*==============================================================*/
/* Table: CIFTLR                                                */
/*==============================================================*/
create table CIFTLR (
   TLR_IDT              char(6)                        not null,
   CIT_CDE              char(2)                        null,
   CUS_IDT              char(9)                        null,
   BDT_TDT              char(7)                        not null,
   TLR_NUM              numeric(4)                     null,
   TLR_NAM              varchar(16)                    not null,
   PAS_CNO              numeric(6)                     null,
   PAS_CPS              char(6)                        null,
   PSC_DAT              datetime                       null,
   PAS_KPS              char(6)                        null,
   PSK_DAT              datetime                       null,
   DEP_IDT              char(7)                        null,
   ORG_IDT              char(5)                        null,
   DEP_NUM              char(2)                        null,
   TLR_TYP              char(1)                        null,
   AUT_MA1              char(6)                        null,
   MNG_CL1              numeric(1)                     null,
   AUT_MA2              char(6)                        null,
   MNG_CL2              numeric(1)                     null,
   TXN_APP              char(3)                        null,
   RTG_LIM              decimal(15,3)                  null,
   CAS_NUM              date                           null,
   CBX_FLG              char(1)                        null,
   TRN_NUM              numeric(7)                     null,
   TRN_TYP              char(1)                        null,
   PRN_ADR              char(4)                        null,
   LTX_JNL              numeric(9)                     null,
   TLR_VCN              numeric(4)                     null,
   TLR_MVN              numeric(4)                     null,
   SGN_STS              char(1)                        null,
   WTX_CNT              decimal(5,0)                   null,
   CTX_CNT              decimal(5,0)                   null,
   LER_YDT              date                           null,
   LTX_CDE              char(8)                        null,
   TLR_CHB              binary(250)                    null,
   CHB_CCY              char(1)                        null,
   CHB_BAL              decimal(13,3)                  null,
   CHB_LMT              decimal(10,0)                  null,
   V91_CKA              binary(20)                     null,
   V91_SEQ              numeric(4)                     null,
   V91_BAL              decimal(15,3)                  null,
   ACC_CKA              binary(27)                     null,
   ACC_CCY              char(2)                        null,
   ACC_BNO              char(2)                        null,
   ACC_CNT              decimal(5,0)                   null,
   V91_CCY              char(2)                        null,
   ACC_AMT              decimal(15,3)                  null,
   V91_STN              char(14)                       null,
   V91_VSN              numeric(10)                    null,
   TLR_RAK              numeric(1)                     null,
   AUT_CLS              char(1)                        null,
   FTX_FLG              char(1)                        null,
   TLR_TXB              varchar(240)                   null,
   SGN_DAT              date                           null,
   TXN_TYP              char(4)                        null,
   TXN_CLS              numeric(1)                     null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table CIFTLR
   add constraint PK_CIFTLR primary key (TLR_IDT)
go

/*==============================================================*/
/* Table: CIFVBT                                                */
/*==============================================================*/
create table CIFVBT (
   VBT_NUM              char(5)                        not null,
   BDT_TDT              char(7)                        not null,
   VBT_LIB              numeric(2)                     null,
   VBT_BOX              numeric(3)                     null,
   VBT_TLR              char(6)                        null,
   BOX_ORG              char(5)                        null,
   REC_VAT              char(5)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table CIFVBT
   add constraint PK_CIFVBT primary key (VBT_NUM)
go

/*==============================================================*/
/* Table: PIFANC                                                */
/*==============================================================*/
create table PIFANC (
   ANC_CDE              char(5)                        not null,
   ANC_TYP              char(1)                        null,
   ANA_NUM              numeric(4)                     null,
   ANC_DCR              char(34)                       null,
   GLC_RAG              char(1)                        null,
   PLC_RAG              char(1)                        null,
   CFB_TYP              char(1)                        null,
   CFB_CD1              char(3)                        null,
   CFB_CD2              char(3)                        null,
   CFB_CD3              char(5)                        null,
   ICL_CDE              char(3)                        null,
   CDR_FLG              char(1)                        null,
   RSV_FI1              char(1)                        null,
   RSV_FI2              char(1)                        null,
   RSV_FI3              char(1)                        null,
   UPT_DAT              datetime                       null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFANC
   add constraint PK_PIFANC primary key (ANC_CDE)
go

/*==============================================================*/
/* Table: PIFAPP                                                */
/*==============================================================*/
create table PIFAPP (
   APP_CDE              char(2)                        not null,
   APP_SNM              char(6)                        null,
   APP_NAM              char(36)                       null,
   APP_IDT              char(3)                        null,
   APP_TYP              char(1)                        null,
   APP_STS              char(1)                        null,
   STR_EXT              char(1)                        null,
   DWN_EXT              char(1)                        null,
   RST_EXT              char(1)                        null,
   APP_CAL              char(3)                        null,
   RUN_MOD              char(1)                        null,
   RUN_HOL              char(1)                        null,
   UPT_DAT              date                           null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFAPP
   add constraint PK_PIFAPP primary key (APP_CDE)
go

/*==============================================================*/
/* Table: PIFBUS                                                */
/*==============================================================*/
create table PIFBUS (
   BUS_CDE              char(3)                        not null,
   APP_CDE              char(2)                        null,
   BUS_ITM              char(4)                        null,
   BUS_APP              char(2)                        null,
   BUS_NAM              nvarchar(34)                   null,
   BUS_SNM              char(6)                        null,
   UPT_DAT              datetime                       null,
   UPT_TLR              char(6)                        null,
   BUS_KD1              char(1)                        null,
   BUS_KD2              numeric(2)                     null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFBUS
   add constraint PK_PIFBUS primary key (BUS_CDE)
go

/*==============================================================*/
/* Table: PIFCCY                                                */
/*==============================================================*/
create table PIFCCY (
   CUR_CDE              char(2)                        not null,
   CUR_NMC              char(16)                       null,
   CUR_NME              char(16)                       null,
   CNT_NAM              char(16)                       null,
   DOM_CDE              char(4)                        null,
   INT_CUR              char(3)                        null,
   DEC_POS              numeric(1)                     null,
   CCY_KND              char(1)                        null,
   CLR_FLG              char(1)                        null,
   TTC_FLG              char(1)                        null,
   CSH_FLG              char(1)                        null,
   CNT_FLG              char(1)                        null,
   RND_FLG              char(1)                        null,
   EXC_FLG              char(1)                        null,
   CUR_UNT              decimal(7,0)                   null,
   PRC_FLG              char(1)                        null,
   EXC_UNT              numeric(1)                     null,
   INT_PER              numeric(3)                     null,
   HOL_FLG              char(1)                        null,
   CUR_STS              char(1)                        null,
   EFF_DAT              date                           null,
   EXP_DAT              date                           null,
   SPE_FLG              char(1)                        null,
   UPT_DAT              date                           null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFCCY
   add constraint PK_PIFCCY primary key (CUR_CDE)
go

/*==============================================================*/
/* Table: PIFFRT                                                */
/*==============================================================*/
create table PIFFRT (
   FRT_KEY              char(13)                       not null,
   CUR_CDE              char(2)                        null,
   FRT_CDEs             char(3)                        null,
   FRT_KD1              char(1)                        null,
   FRT_KD2              char(2)                        null,
   EFF_DAT              char(8)                        null,
   FRT_CDE              char(3)                        null,
   FRT_NAM              char(24)                       null,
   DOC_CDE              char(2)                        null,
   DOC_NAM              nvarchar(14)                   null,
   FRT_SPH              decimal(5,4)                   null,
   FRT_SPL              decimal(5,4)                   null,
   SPR_FLG              char(1)                        null,
   MAL_FEE              decimal(11,3)                  null,
   COM_FEE              decimal(11,3)                  null,
   FEE_RAT              decimal(9,6)                   null,
   HIG_LIM              decimal(11,3)                  null,
   LOW_LIM              decimal(11,3)                  null,
   FEECYC               char(1)                        null,
   FEESDE               char(1)                        null,
   FEE_ITM              char(4)                        null,
   FRT_FLG              char(1)                        null,
   CMT_FLG              char(1)                        null,
   FEE_TPY              char(1)                        null,
   CMT_TPY              char(1)                        null,
   RSV_FLG              char(1)                        null,
   CRETLR               char(6)                        null,
   CREDAT               date                           null,
   UPT_DAT              date                           null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFFRT
   add constraint PK_PIFFRT primary key (FRT_KEY)
go

/*==============================================================*/
/* Table: PIFGLC                                                */
/*==============================================================*/
create table PIFGLC (
   GLC_CDE              char(6)                        not null,
   CUR_CDE              char(2)                        not null,
   ITM_NUM              char(4)                        not null,
   GLC_CCY              char(2)                        null,
   GLC_ITM              char(4)                        null,
   GLC_NAM              char(34)                       null,
   GLC_CLS              char(1)                        null,
   GLC_GRP              char(4)                        null,
   GLC_TYP              char(1)                        null,
   GLC_CAT              char(1)                        null,
   GLC_CTY              char(1)                        null,
   CLC_BAL              char(1)                        null,
   GLC_OCC              char(1)                        null,
   GLC_INT              char(1)                        null,
   GLC_RAT              char(3)                        null,
   GLC_RVS              char(1)                        null,
   RSV_FGS              char(1)                        null,
   RSV_FG1              char(1)                        null,
   RSV_FG2              char(1)                        null,
   RSV_FG3              char(1)                        null,
   RSV_FG4              char(1)                        null,
   RSV_FG5              char(1)                        null,
   GLC_BEL              char(1)                        null,
   EFF_DAT              datetime                       null,
   EXP_DAT              datetime                       null,
   UPT_DAT              datetime                       null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFGLC
   add constraint PK_PIFGLC primary key (GLC_CDE)
go

/*==============================================================*/
/* Table: PIFIRT                                                */
/*==============================================================*/
create table PIFIRT (
   IRT_KEY              char(13)                       not null,
   cur_cde              char(2)                        null,
   irt_cde              char(3)                        null,
   irt_kd1              char(1)                        null,
   irt_kd2              char(2)                        null,
   eff_dat              datetime                       null,
   irt_nam              char(24)                       null,
   cur_flg              char(1)                        null,
   mod_flg              char(1)                        null,
   irt_val              decimal(9,6)                   null,
   irt_sph              decimal(4,3)                   null,
   irt_spl              decimal(4,3)                   null,
   spr_flg              char(1)                        null,
   cdr_flg              char(1)                        null,
   irt_trm              numeric(3)                     null,
   trm_unt              char(1)                        null,
   cre_tlr              char(6)                        null,
   cre_dat              smalldatetime                  null,
   upt_dat              smalldatetime                  null,
   upt_tlr              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFIRT
   add constraint PK_PIFIRT primary key (IRT_KEY)
go

/*==============================================================*/
/* Table: PIFITM                                                */
/*==============================================================*/
create table PIFITM (
   ITM_NUM              char(4)                        not null,
   ANC_CDE              char(5)                        null,
   ITM_NAM              char(34)                       null,
   ITM_TYP              char(1)                        null,
   ITM_ATR              char(1)                        null,
   ITM_CLA              char(1)                        null,
   BEL_ITM              char(4)                        null,
   PBC_ITM              char(3)                        null,
   ITM_STS              char(1)                        null,
   SUB_FLG              char(1)                        null,
   DTL_FLG              char(1)                        null,
   BAL_DIR              char(1)                        null,
   BLR_FLG              char(1)                        null,
   ZBL_FLG              char(1)                        null,
   USR_FLG              char(1)                        null,
   ACT_FLG              char(1)                        null,
   ENY_FLG              char(1)                        null,
   ERY_AUT              char(2)                        null,
   REQ_AUT              char(2)                        null,
   REV_FLG              char(1)                        null,
   REV_TYP              char(1)                        null,
   REV_TRM              numeric(3)                     null,
   STA_CDE              char(8)                        null,
   INT_KND              char(2)                        null,
   INT_FLG              char(1)                        null,
   TAX_FLG              char(1)                        null,
   OPS_ITM              char(4)                        null,
   INT_EXP              char(4)                        null,
   INT_INC              char(4)                        null,
   INT_DAC              char(4)                        null,
   INT_CAC              char(4)                        null,
   GLE_CDE              char(4)                        null,
   PNL_CDE              char(4)                        null,
   UPT_DAT              date                           null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFITM
   add constraint PK_PIFITM primary key (ITM_NUM)
go

/*==============================================================*/
/* Table: PIFPDC                                                */
/*==============================================================*/
create table PIFPDC (
   PRD_CDE              char(6)                        not null,
   BUS_CDE              char(3)                        null,
   PRD_BUS              char(3)                        null,
   PRD_NUM              numeric(3)                     null,
   PRD_NAM              text                           null,
   PRD_SNM              nvarchar(12)                   null,
   PRD_IDT              nvarchar(6)                    null,
   PRD_VAL              date                           null,
   PRD_ITM              char(4)                        null,
   PRD_PRI              char(2)                        null,
   PRD_FEE              char(2)                        null,
   PRD_PRF              char(2)                        null,
   PRD_SEV              char(2)                        null,
   PRD_TRM              char(2)                        null,
   PRD_RIS              char(2)                        null,
   PRD_RUL              char(2)                        null,
   PRD_CCY              char(2)                        null,
   PRD_CUS              char(2)                        null,
   PRD_RSK              decimal(9,6)                   null,
   UPT_DAT              datetime                       null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFPDC
   add constraint PK_PIFPDC primary key (PRD_CDE)
go

/*==============================================================*/
/* Table: PIFPLC                                                */
/*==============================================================*/
create table PIFPLC (
   PLC_CDE              char(8)                        not null,
   GLC_CDE              char(6)                        not null,
   PLS_CDE              char(2)                        null,
   PLC_NAM              char(34)                       null,
   PLC_TYP              char(1)                        null,
   RSV_FG1              char(1)                        null,
   RSV_FG2              char(1)                        null,
   UPT_DAT              date                           null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFPLC
   add constraint PK_PIFPLC primary key (PLC_CDE)
go

/*==============================================================*/
/* Table: PIFPRD                                                */
/*==============================================================*/
create table PIFPRD (
   PRD_SAL              char(7)                        not null,
   PRD_CDE              char(6)                        not null,
   IRT_KEY              char(13)                       null,
   FRT_KEY              char(13)                       null,
   XRT_KEY              char(21)                       null,
   PRD_BUS              char(3)                        null,
   PRD_NUM              numeric(3)                     null,
   PRD_DAT              char(8)                        null,
   PRD_YNO              numeric(3)                     null,
   PRD_TTL              nvarchar(30)                   null,
   SRT_AMT              decimal(15,3)                  null,
   INC_AMT              decimal(15,3)                  null,
   LIM_AMT              decimal(15,3)                  null,
   QUO_AMT              decimal(15,3)                  null,
   MNG_FRT              decimal(6,4)                   null,
   RDM_FRT              decimal(6,4)                   null,
   SRV_FE1              decimal(11,3)                  null,
   SRV_FE2              decimal(11,3)                  null,
   YRT_RAT              decimal(6,4)                   null,
   INT_RAT              decimal(9,6)                   null,
   FIN_RAT              decimal(3,0)                   null,
   FRT_SPD              decimal(6,4)                   null,
   AUT_EXT              char(1)                        null,
   AUT_TRA              char(1)                        null,
   RAL_ADV              char(1)                        null,
   STM_MAL              char(1)                        null,
   SAF_HLP              char(1)                        null,
   RST_DAT              datetime                       null,
   VAL_DAT              datetime                       null,
   DUE_DAT              datetime                       null,
   ACT_DAT              datetime                       null,
   MAX_EXT              numeric(3)                     null,
   STP_RGT              char(1)                        null,
   RDM_RGT              char(1)                        null,
   RDM_LIM              decimal(15,3)                  null,
   PRD_RL1              char(2)                        null,
   PRD_RL2              char(2)                        null,
   PRD_RL3              char(2)                        null,
   PRD_CCY              char(2)                        null,
   PRD_CUS              char(2)                        null,
   PRD_RSK              decimal(9,6)                   null,
   UPT_DAT              datetime                       null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFPRD
   add constraint PK_PIFPRD primary key (PRD_SAL)
go

/*==============================================================*/
/* Table: PIFTRX                                                */
/*==============================================================*/
create table PIFTRX (
   TRX_CDE              char(6)                        not null,
   APP_CDE              char(2)                        not null,
   TRX_GRP              char(2)                        null,
   TXG_SNO              char(2)                        null,
   TRX_MMO              char(6)                        null,
   TRX_SNM              char(6)                        null,
   TRX_NAM              char(6)                        null,
   TRX_CLS              numeric(2)                     null,
   AUT_LVL              numeric(2)                     null,
   TRX_STS              char(1)                        null,
   RUN_HOL              char(1)                        null,
   RUN_MOD              char(1)                        null,
   LOG_JNL              char(1)                        null,
   HIS_FRM              char(1)                        null,
   HIS_PRT              char(1)                        null,
   ACT_CHA              char(1)                        not null,
   AWA_FLG              char(1)                        null,
   ERP_FLG              char(1)                        null,
   OUT_TSS              char(1)                        null,
   SUB_TRX              char(6)                        null,
   TLR_TOT              numeric(2)                     null,
   INP_FMT              numeric(4)                     null,
   SKP_CTL              char(8)                        null,
   SWH_CTL              char(8)                        null,
   PRO_CNT              numeric(1)                     null,
   PRO_GRP              char(17)                       null,
   PRO_CDE              char(8)                        null,
   ERR_EXT              char(1)                        null,
   PRO_CTL              char(8)                        null,
   UPT_DAT              date                           null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFTRX
   add constraint PK_PIFTRX primary key (TRX_CDE)
go

/*==============================================================*/
/* Table: PIFXRT                                                */
/*==============================================================*/
create table PIFXRT (
   XRT_KEY              char(21)                       not null,
   CUR_CDE              char(2)                        null,
   SEC_CCY              char(2)                        null,
   XRT_CDE              char(1)                        null,
   EFF_DAT              char(8)                        null,
   EFF_TIM              char(8)                        null,
   CUR_FLG              char(1)                        null,
   MOD_FLG              char(1)                        null,
   RAT_VAL              decimal(12,6)                  null,
   RAT_FLG              char(1)                        null,
   CRE_TLR              char(6)                        null,
   CRE_DAT              date                           null,
   CRE_TIM              time                           null,
   UPT_DAT              date                           null,
   UPT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table PIFXRT
   add constraint PK_PIFXRT primary key (XRT_KEY)
go

/*==============================================================*/
/* Table: RIFAUA                                                */
/*==============================================================*/
create table RIFAUA (
   AUA_KEY              char(8)                        not null,
   TRX_CDE              char(6)                        null,
   AUT_CLS              numeric(2)                     null,
   AMT_LIM              decimal(15,3)                  null,
   AUT_RES              char(4)                        null,
   AUT_DSC              char(34)                       null,
   UPD_DAT              date                           null,
   UPD_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table RIFAUA
   add constraint PK_RIFAUA primary key (AUA_KEY)
go

/*==============================================================*/
/* Table: RIFCRC                                                */
/*==============================================================*/
create table RIFCRC (
   CRC_REF              char(7)                        not null,
   CUS_IDT              char(9)                        not null,
   CRC_BNK              char(2)                        null,
   CRC_YER              numeric(2)                     null,
   CRC_NUM              numeric(6)                     null,
   CRC_RNO              varchar(30)                    null,
   CRC_CUS              char(9)                        null,
   CRC_DEP              char(7)                        not null,
   ORG_IDT              char(5)                        null,
   DEP_NUM              char(2)                        null,
   WRK_GRP              char(4)                        null,
   MLN_TLR              char(6)                        null,
   TRX_JNO              char(9)                        null,
   CRE_DAT              date                           null,
   CRT_CDE              char(4)                        null,
   CRT_TYP              char(1)                        null,
   GUR_TYP              char(1)                        null,
   LIM_TYP              char(1)                        null,
   CLC_AMT              decimal(15,3)                  null,
   ADD_AMT              decimal(15,3)                  null,
   DIS_AMT              decimal(15,3)                  null,
   HLD_AMT              decimal(15,3)                  null,
   TAK_AMT              decimal(15,3)                  null,
   REP_AMT              decimal(15,3)                  null,
   OSD_AMT              decimal(15,3)                  null,
   CRC_CCY              char(2)                        null
)
with identity_gap = 1
go

alter table RIFCRC
   add constraint PK_RIFCRC primary key (CRC_REF)
go

/*==============================================================*/
/* Table: RIFQUO                                                */
/*==============================================================*/
create table RIFQUO (
   CUS_IDT              char(9)                        not null,
   CUS_KND              char(1)                        null,
   CUS_NUM              char(7)                        null,
   CUS_CHK              char(1)                        null,
   LIM_KND              char(1)                        null,
   ACT_YER              numeric(2)                     null,
   CRE_LIM              decimal(15,3)                  null,
   LIM_BAL              decimal(15,3)                  null,
   LIM_ATR              char(1)                        null,
   LIM_CUS              char(9)                        null,
   EFT_DAT              date                           null,
   EXP_DAT              date                           null,
   MAI_FIL              char(20)                       null,
   MAI_CRC              char(10)                       null,
   CRC_CNT              decimal(2)                     null,
   UPD_DAT              date                           null,
   UPD_TLR              char(6)                        null,
   REC_STS              char(4)                        null
)
with identity_gap = 1
go

alter table RIFQUO
   add constraint PK_RIFQUO primary key (CUS_IDT)
go

/*==============================================================*/
/* Table: Reference_12                                          */
/*==============================================================*/
create table Reference_12 (
   ACT_ACN              char(20)                       not null,
   LON_BKN              char(12)                       not null
)
with identity_gap = 1
go

alter table Reference_12
   add constraint PK_REFERENCE_12 primary key (ACT_ACN, LON_BKN)
go

/*==============================================================*/
/* Index: Reference_12_FK                                       */
/*==============================================================*/
create index Reference_12_FK on Reference_12 (
ACT_ACN ASC
)
go

/*==============================================================*/
/* Index: Reference_12_FK2                                      */
/*==============================================================*/
create index Reference_12_FK2 on Reference_12 (
LON_BKN ASC
)
go

/*==============================================================*/
/* Table: Reference_38                                          */
/*==============================================================*/
create table Reference_38 (
   IRT_KEY              char(13)                       not null,
   PRD_SAL              char(7)                        not null
)
with identity_gap = 1
go

alter table Reference_38
   add constraint PK_REFERENCE_38 primary key (IRT_KEY, PRD_SAL)
go

/*==============================================================*/
/* Index: Reference_38_FK                                       */
/*==============================================================*/
create index Reference_38_FK on Reference_38 (
IRT_KEY ASC
)
go

/*==============================================================*/
/* Index: Reference_38_FK2                                      */
/*==============================================================*/
create index Reference_38_FK2 on Reference_38 (
PRD_SAL ASC
)
go

/*==============================================================*/
/* Table: Reference_39                                          */
/*==============================================================*/
create table Reference_39 (
   FRT_KEY              char(13)                       not null,
   PRD_SAL              char(7)                        not null
)
with identity_gap = 1
go

alter table Reference_39
   add constraint PK_REFERENCE_39 primary key (FRT_KEY, PRD_SAL)
go

/*==============================================================*/
/* Index: Reference_39_FK                                       */
/*==============================================================*/
create index Reference_39_FK on Reference_39 (
FRT_KEY ASC
)
go

/*==============================================================*/
/* Index: Reference_39_FK2                                      */
/*==============================================================*/
create index Reference_39_FK2 on Reference_39 (
PRD_SAL ASC
)
go

/*==============================================================*/
/* Table: Reference_40                                          */
/*==============================================================*/
create table Reference_40 (
   XRT_KEY              char(21)                       not null,
   PRD_SAL              char(7)                        not null
)
with identity_gap = 1
go

alter table Reference_40
   add constraint PK_REFERENCE_40 primary key (XRT_KEY, PRD_SAL)
go

/*==============================================================*/
/* Index: Reference_40_FK                                       */
/*==============================================================*/
create index Reference_40_FK on Reference_40 (
XRT_KEY ASC
)
go

/*==============================================================*/
/* Index: Reference_40_FK2                                      */
/*==============================================================*/
create index Reference_40_FK2 on Reference_40 (
PRD_SAL ASC
)
go

/*==============================================================*/
/* Table: Reference_44                                          */
/*==============================================================*/
create table Reference_44 (
   ANC_CDE              char(5)                        not null,
   ITM_NUM              char(4)                        not null
)
with identity_gap = 1
go

alter table Reference_44
   add constraint PK_REFERENCE_44 primary key (ANC_CDE, ITM_NUM)
go

/*==============================================================*/
/* Index: Reference_44_FK                                       */
/*==============================================================*/
create index Reference_44_FK on Reference_44 (
ANC_CDE ASC
)
go

/*==============================================================*/
/* Index: Reference_44_FK2                                      */
/*==============================================================*/
create index Reference_44_FK2 on Reference_44 (
ITM_NUM ASC
)
go

/*==============================================================*/
/* Table: Relationship_40                                       */
/*==============================================================*/
create table Relationship_40 (
   ANC_CDE              char(5)                        not null,
   PLC_CDE              char(8)                        not null
)
with identity_gap = 1
go

alter table Relationship_40
   add constraint PK_RELATIONSHIP_40 primary key (ANC_CDE, PLC_CDE)
go

/*==============================================================*/
/* Index: Relationship_40_FK                                    */
/*==============================================================*/
create index Relationship_40_FK on Relationship_40 (
ANC_CDE ASC
)
go

/*==============================================================*/
/* Index: Relationship_40_FK2                                   */
/*==============================================================*/
create index Relationship_40_FK2 on Relationship_40 (
PLC_CDE ASC
)
go

/*==============================================================*/
/* Table: TIF999                                                */
/*==============================================================*/
create table TIF999 (
   KEY_999              char(27)                       not null,
   JRN_KEY              char(10)                       not null,
   ITM_999              char(4)                        null,
   ID1_999              char(7)                        null,
   ID2_999              char(7)                        null,
   JNO_999              char(9)                        null,
   VCH_NUM              char(12)                       null,
   ACT_TXN              char(10)                       null,
   TLR_NUM              char(6)                        null,
   VCH_SNO              numeric(4)                     null,
   SET_SNO              numeric(2)                     null,
   TRX_DAT              date                           null,
   JRN_NUM              char(9)                        null,
   FXE_FLG              char(1)                        null,
   ACT_ORG              char(5)                        null,
   ACT_NUM              char(20)                       null,
   CUR_CDE              char(2)                        null,
   ITM_CDE              char(4)                        null,
   CUS_IDT              char(7)                        null,
   ACT_SEQ              char(7)                        null,
   DCR_FLG              char(1)                        null,
   TXN_AMT              decimal(15,3)                  null,
   VAL_DAT              date                           null,
   RVS_LBL              char(1)                        null,
   ANA_CDE              char(5)                        null,
   FUR_INF              char(32)                       null,
   FXC_RAT              decimal(12,6)                  null,
   SEC_CCY              char(2)                        null,
   SEC_AMT              decimal(12,6)                  null,
   COR_ITM              char(4)                        null,
   COR_FLG              char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table TIF999
   add constraint PK_TIF999 primary key (KEY_999)
go

/*==============================================================*/
/* Table: TIFACM                                                */
/*==============================================================*/
create table TIFACM (
   ACM_NUM              char(12)                       not null,
   JRN_KEY              char(10)                       not null,
   ACM_TXN              char(10)                       null,
   TLR_NUM              char(6)                        null,
   ACM_SNO              numeric(4)                     null,
   SET_SNO              numeric(2)                     null,
   TRX_DAT              date                           null,
   JRN_NUM              char(9)                        null,
   ACT_ORG              char(5)                        null,
   ACT_NUM              char(20)                       null,
   CUR_CDE              char(2)                        null,
   ITM_CDE              char(4)                        null,
   CUS_IDT              char(7)                        null,
   ACT_SEQ              char(7)                        null,
   ACM_DAA              varchar(96)                    null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table TIFACM
   add constraint PK_TIFACM primary key (ACM_NUM)
go

/*==============================================================*/
/* Table: TIFCTR                                                */
/*==============================================================*/
create table TIFCTR (
   PK_NUM               char(12)                       not null,
   VLT_KEY              char(11)                       not null,
   RGT_DAT              char(8)                        null,
   REG_SNO              numeric(4)                     null,
   JRN_NUM              char(9)                        null,
   VCH_SNO              char(10)                       null,
   TRX_ORG              char(5)                        null,
   TRX_TLR              char(6)                        null,
   TRX_STS              char(1)                        null,
   APP_CDE              char(2)                        null,
   TRX_CDE              char(6)                        null,
   OPS_ACT              char(20)                       null,
   VBT_NUM              char(5)                        null,
   VBT_LIB              numeric(2)                     null,
   VBT_BOX              numeric(3)                     null,
   INP_OUT              char(1)                        null,
   TRN_CCY              char(2)                        null,
   BRK_FLG              char(1)                        null,
   TRN_AMT              decimal(15,3)                  null,
   VAL_DTL              varchar(300)                   null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table TIFCTR
   add constraint PK_TIFCTR primary key (PK_NUM)
go

/*==============================================================*/
/* Table: TIFJNB                                                */
/*==============================================================*/
create table TIFJNB (
   JNB_KEY              char(18)                       not null,
   JRN_KEY              char(10)                       null,
   JRN_DAT              date                           null,
   JRN_FLG              char(1)                        null,
   JRN_NUM              char(9)                        null,
   CIT_CDE              char(2)                        null,
   JRN_SEQ              numeric(7)                     null,
   JRN_ARA              text                           null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table TIFJNB
   add constraint PK_TIFJNB primary key (JNB_KEY)
go

/*==============================================================*/
/* Table: TIFJNH                                                */
/*==============================================================*/
create table TIFJNH (
   JRN_KEY              char(10)                       not null,
   JRN_USE              char(1)                        null,
   JNH_BAN              char(2)                        null,
   JNH_SEQ              numeric(7)                     null,
   NXT_JRN              numeric(7)                     null,
   ACT_DAT              date                           null,
   JNH_NUM              char(9)                        null,
   REN_JRN              numeric(7)                     null,
   MAX_JRN              numeric(7)                     null,
   WAR_JRN              numeric(7)                     null,
   BAT_FLG              char(1)                        null,
   REN_DAT              date                           null,
   REN_TIM              time                           null,
   CUT_DAT              date                           null,
   CUT_TIM              time                           null,
   BAT_DAT              date                           null,
   BAT_TIM              time                           null,
   REN_TNO              decimal(9)                     null,
   BAT_STS              char(50)                       null,
   FIL_FLD              text                           null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table TIFJNH
   add constraint PK_TIFJNH primary key (JRN_KEY)
go

/*==============================================================*/
/* Table: TIFJNL                                                */
/*==============================================================*/
create table TIFJNL (
   JRN_KEY              char(10)                       not null,
   JRN_USE              char(1)                        null,
   JRN_NUM              char(9)                        null,
   CIT_CDE              char(2)                        null,
   JRN_SEQ              numeric(7)                     null,
   APP_CDE              numeric(2)                     null,
   APP_MMO              char(3)                        null,
   TRX_CDE              numeric(6)                     null,
   TRX_MMO              char(6)                        null,
   TRX_FRM              char(4)                        null,
   TRX_DAT              date                           null,
   TRX_TIM              time                           null,
   ACT_DAT              date                           null,
   TEM_SNO              char(4)                        null,
   TLR_IDT              char(6)                        not null,
   OUR_REF              char(24)                       null,
   TXN_BDT              char(7)                        null,
   TRX_ORG              char(5)                        null,
   TRX_DPT              char(2)                        null,
   PRD_CDE              char(17)                       null,
   CRN_YER              numeric(2)                     null,
   PRD_SEQ              numeric(6)                     null,
   THR_REF              char(24)                       null,
   MST_USE              char(1)                        null,
   REN_FLG              char(1)                        null,
   VCH_CID              char(1)                        null,
   CTR_JNO              char(9)                        null,
   WFF_FLG              char(1)                        null,
   WFF_JNO              decimal(9)                     null,
   AUT_CLS              char(1)                        null,
   AUT_LVL              char(2)                        null,
   AUT_RES              char(60)                       null,
   VCH_AUT              char(6)                        null,
   VCH_ANO              char(6)                        null,
   TRX_TYP              char(1)                        null,
   TEL_CHP              decimal(9)                     null,
   VCH_NUM              numeric(4)                     null,
   ACM_NUM              numeric(4)                     null,
   PIN_CNT              numeric(2)                     null,
   ACM_CNT              numeric(2)                     null,
   ACT_CHA              char(54)                       null,
   ACT_NUM              char(20)                       null,
   ACT_CHP              char(9)                        null,
   VCH_ATT              numeric(3)                     null,
   ERY_TYP              char(1)                        null,
   VCH_CFM              char(1)                        null,
   VCH_MFG              char(1)                        null,
   INP_ARA              text                           null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table TIFJNL
   add constraint PK_TIFJNL primary key (JRN_KEY)
go

/*==============================================================*/
/* Table: TIFTIA                                                */
/*==============================================================*/
create table TIFTIA (
   APP_CDE              char(2)                        null,
   TRX_CDE              char(6)                        null,
   TRM_NUM              char(4)                        null,
   TLR_NUM              char(6)                        null,
   REQ_TPY              char(1)                        null,
   AUT_SP1              char(6)                        null,
   AUT_SP2              char(6)                        null,
   SP1_PSW              char(6)                        null,
   SP2_PSW              char(6)                        null,
   SP1_DEV              char(1)                        null,
   SP2_DEV              char(1)                        null,
   AUT_LVL              char(2)                        null,
   AUT_RES              varchar(60)                    null,
   LST_JNO              char(9)                        null,
   CMP_FLG              char(1)                        null,
   ENC_FLG              char(1)                        null,
   OVF_FLG              char(1)                        null,
   TRX_BDT              char(7)                        null,
   TLR_LVL              numeric(1)                     null,
   TRX_TPY              char(5)                        null,
   TRX_DAA              text                           null
)
with identity_gap = 1
go

/*==============================================================*/
/* Table: TIFTOA                                                */
/*==============================================================*/
create table TIFTOA (
   MSG_TYP              char(1)                        null,
   MSG_DES              char(1)                        null,
   MSG_APP              char(2)                        null,
   MSG_CDE              numeric(4)                     null,
   TRX_ORG              char(5)                        null,
   TRM_NUM              char(4)                        null,
   TRM_SNO              numeric(4)                     null,
   APP_CDE              char(2)                        null,
   TRX_CDE              char(6)                        null,
   TRX_IDT              char(6)                        null,
   STX_CDE              char(6)                        null,
   STX_APP              char(2)                        null,
   TRX_DAT              date                           null,
   TRX_TIM              time                           null,
   TRX_JNO              char(9)                        null,
   TRX_ANO              char(10)                       null,
   TLR_NUM              char(6)                        null,
   TLR_SEQ              numeric(4)                     null,
   PAG_FLG              char(1)                        null,
   CMP_FLG              char(1)                        null,
   ENC_FLG              char(1)                        null,
   MSG_LEN              numeric(4)                     null,
   OUT_DAA              text                           null
)
with identity_gap = 1
go

/*==============================================================*/
/* Table: TIFTWA                                                */
/*==============================================================*/
create table TIFTWA (
   JNL_NUM              char(9)                        null,
   APP_CDE              char(2)                        null,
   APP_IDT              char(3)                        null,
   TRX_CDE              char(6)                        null,
   TRX_IDT              char(8)                        null,
   ACT_DAT              date                           null,
   TRX_DAT              date                           null,
   TRX_TIM              time                           null,
   TRM_NUM              char(4)                        null,
   TLR_NUM              char(6)                        null,
   AUT_SP1              char(6)                        null,
   AUT_SP2              char(6)                        null,
   TRX_BAN              char(2)                        null,
   TRX_ORG              char(5)                        null,
   TRX_DEP              char(7)                        null,
   AUT_RES              char(60)                       null,
   TLR_CHA              char(9)                        null,
   TRX_AC2              char(20)                       null,
   AC2_CHA              char(9)                        null,
   JNL_FLG              char(1)                        null,
   FIL_FLG              char(1)                        null,
   REE_FLG              char(1)                        null,
   CTX_CHA              char(9)                        null,
   WFF_FLG              char(1)                        null,
   WFF_CHA              char(9)                        null,
   AUT_LVL              char(2)                        null,
   VCH_CNT              numeric(2)                     null,
   FIN_CNT              numeric(2)                     null,
   HDQ_ORG              char(5)                        null,
   AUT_CLS              char(1)                        null,
   TRX_TYP              char(5)                        null,
   TOT_CCY              char(2)                        null,
   TOT_AMT              decimal(15,3)                  null,
   SP1_PSW              char(6)                        null,
   SP2_PSW              char(6)                        null,
   SP1_DEV              char(1)                        null,
   SP2_DEV              char(1)                        null,
   CTX_JNO              char(9)                        null,
   CTX_ANO              char(10)                       null,
   CTX_TID              char(6)                        null,
   TRX_JNO              char(9)                        null,
   CTX_ARA              text                           null,
   VCH_SNO              char(10)                       null,
   CTX_FLG              char(1)                        null,
   PRT_FLG              char(1)                        null,
   OUR_REF              char(29)                       null,
   TXN_BDT              char(5)                        null,
   TRX_PRD              char(17)                       null,
   TRX_DPT              char(2)                        null,
   PRD_CDE              char(6)                        null,
   PRD_DAT              char(8)                        null,
   PRD_YNO              numeric(3)                     null,
   CRN_YER              numeric(2)                     null,
   PRD_SEQ              numeric(6)                     null,
   VCH_ATT              numeric(3)                     null,
   THR_REF              char(29)                       null,
   VCH_AUT              char(6)                        null,
   VCH_ANO              char(6)                        null,
   CLR_ORG              char(5)                        null,
   ERY_TYP              char(1)                        null,
   ERY_DAT              date                           null,
   ERY_TIM              time                           null,
   VCH_CFM              char(1)                        null,
   VCH_MFG              char(1)                        null,
   VCH_ARA              varchar(91)                    null,
   VCH_SGL              char(91)                       null,
   SET_SNO              numeric(2)                     null,
   FXE_FLG              char(1)                        null,
   ACT_ORG              char(5)                        null,
   ACT_NUM              char(20)                       null,
   CUR_CDE              char(2)                        null,
   ITM_CDE              char(4)                        null,
   CUS_IDT              char(7)                        null,
   ACT_SEQ              char(7)                        null,
   DCR_FLG              char(1)                        null,
   TXN_AMT              decimal(15,3)                  null,
   VAL_DAT              date                           null,
   RVS_LBL              char(1)                        null,
   ANA_CDE              char(5)                        null,
   FUR_INF              char(32)                       null,
   FXC_RAT              decimal(12,6)                  null,
   SEC_CCY              char(2)                        null,
   SEC_AMT              decimal(15,3)                  null,
   COR_ITM              char(4)                        null,
   MSG_TYP              char(1)                        null,
   MSG_DES              char(1)                        null,
   MSG_APP              char(2)                        null,
   MSG_CDE              numeric(4)                     null
)
with identity_gap = 1
go

/*==============================================================*/
/* Table: TIFVCH                                                */
/*==============================================================*/
create table TIFVCH (
   VCH_NUM              char(12)                       not null
         constraint CKC_VCH_NUM_TIFVCH check (VCH_NUM >= '1'),
   JRN_KEY              char(10)                       not null,
   ACT_TXN              char(10)                       null,
   TLR_NUM              char(6)                        null,
   VCH_SNO              numeric(4)                     null,
   SET_SNO              numeric(2)                     null,
   TRX_DAT              date                           null,
   FXE_FLG              char(1)                        null,
   ACT_ORG              char(5)                        null,
   ACT_NUM              char(20)                       null,
   CUR_CDE              char(2)                        null,
   ITM_CDE              char(4)                        null,
   CUS_IDT              char(7)                        null,
   ACT_SEQ              char(7)                        null,
   DCR_FLG              char(1)                        null,
   TXN_AMT              decimal(15,3)                  null,
   VAL_DAT              date                           null,
   RVS_LBL              char(1)                        null,
   ANA_CDE              char(5)                        null,
   FUR_INF              char(32)                       null,
   FXC_RAT              decimal(15,3)                  null,
   SEC_CCY              char(4)                        null,
   SEC_AMT              numeric(3)                     null,
   COR_ITM              char(4)                        null,
   REC_STS              char(1)                        null,
   TRX_PRD              char(17)                       null
)
with identity_gap = 1
go

alter table TIFVCH
   add constraint PK_TIFVCH primary key (VCH_NUM)
go

/*==============================================================*/
/* Table: TIFVLT                                                */
/*==============================================================*/
create table TIFVLT (
   VLT_KEY              char(11)                       not null,
   VBT_NUM              char(5)                        not null,
   VBT_LIB              numeric(2)                     null,
   VBT_BOX              numeric(3)                     null,
   REC_TYP              char(2)                        null,
   CCY_CDE              char(2)                        null,
   PAR_VAL              char(2)                        null,
   BRK_FLG              char(1)                        null,
   CBL_CNT              decimal(15,3)                  null,
   LBA_CNT              decimal(15,3)                  null,
   LST_DAT              datetime                       null,
   BAL_FLG              char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table TIFVLT
   add constraint PK_TIFVLT primary key (VLT_KEY)
go

/*==============================================================*/
/* Table: TIFVMB                                                */
/*==============================================================*/
create table TIFVMB (
   VMB_KEY              char(21)                       not null,
   VMB_DAT              char(8)                        null,
   VMB_FLG              char(1)                        null,
   VMB_NUM              char(12)                       null,
   VMB_ARA              text                           null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table TIFVMB
   add constraint PK_TIFVMB primary key (VMB_KEY)
go

/*==============================================================*/
/* Table: account_balance                                       */
/*==============================================================*/
create table account_balance (
   id                   numeric(8,0)                   identity,
   cus_number           char(9)                        null,
   cus_account          char(36)                       null,
   cus_type             char(2)                        null,
   cus_name             char(2)                        null,
   account_status       char(2)                        null,
   fon_cuy_type         char(10)                       null,
   loy_cuy_type         char(10)                       null,
   open_date            datetime                       null,
   pay_type             char(6)                        null,
   coin_code            char(10)                       null,
   fixed_quota          decimal                        null,
   current_quota        decimal                        null,
   quota_amount         decimal                        null
)
with identity_gap = 1
go

alter table account_balance
   add constraint PK_ACCOUNT_BALANCE primary key (id)
go

/*==============================================================*/
/* Table: account_flag                                          */
/*==============================================================*/
create table account_flag (
   id                   numeric(8,0)                   identity,
   act_flag             char(3)                        null,
   bus_type             char(3)                        null,
   bus_name             char(6)                        null,
   letgo_sutject        char(8)                        null,
   letgo_num            char(5)                        null,
   interest_subject     char(8)                        null,
   interest_num         char(5)                        null,
   shd_int_sut          char(8)                        null,
   shd_int_num          char(5)                        null,
   penalty_subject      char(8)                        null,
   penalty_num          char(5)                        null,
   shd_pey_sut          char(8)                        null,
   shd_pey_num          char(5)                        null,
   debt_subject         char(8)                        null,
   debt_num             char(5)                        null,
   not_debt_sut         char(8)                        null,
   not_debt_num         char(5)                        null,
   charges_subject      char(8)                        null,
   charges_subject_num  char(5)                        null,
   operation_subject    char(8)                        null,
   operation_num        char(5)                        null,
   ninety_TT            char(3)                        null,
   ninety_subject       char(8)                        null,
   ninety_180_TT        char(3)                        null,
   ninety_180_sut       char(8)                        null,
   ninety_360_TT        char(3)                        null,
   ninety_360_sut       char(8)                        null,
   up_360_TT            char(3)                        null,
   up_360_subject       char(8)                        null,
   stay_TT              char(3)                        null,
   stay_subject         char(8)                        null,
   status               char(1)                        null,
   effect_date          datetime                       null
)
with identity_gap = 1
go

alter table account_flag
   add constraint PK_ACCOUNT_FLAG primary key (id)
go

/*==============================================================*/
/* Table: accrue_params                                         */
/*==============================================================*/
create table accrue_params (
   id                   numeric(8,0)                   identity,
   ope_code             char(1)                        null,
   org_code             nvarchar(5)                    null,
   acc_type             char(2)                        null,
   acc_name             nvarchar(20)                   null,
   bak_account          char(10)                       null,
   bak_source           char(1)                        null,
   acc_percent          char(5)                        null,
   ope_flag             char(1)                        null,
   count_date           char(3)                        null,
   start_date           datetime                       null,
   last_date            datetime                       null,
   UPT_CLR              char(6)                        null,
   use_status           char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table accrue_params
   add constraint PK_ACCRUE_PARAMS primary key (id)
go

/*==============================================================*/
/* Table: accrue_source                                         */
/*==============================================================*/
create table accrue_source (
   id                   numeric(8,0)                   identity,
   ope_code             char(1)                        null,
   org_code             char(6)                        null,
   acc_type             char(2)                        null,
   acc_account          char(10)                       null,
   acc_name             nvarchar(20)                   null,
   bak_account          char(10)                       null,
   bak_source           char(1)                        null,
   acc_percent          char(5)                        null,
   ope_flag             char(1)                        null,
   acc_date             char(3)                        null,
   source_code          char(2)                        null,
   source_comment       text                           null,
   opt_type             char(1)                        null,
   count_type           char(1)                        null,
   source_class         char(1)                        null,
   coin_type            char(1)                        null,
   start_time           datetime                       null,
   last_time            datetime                       null,
   UDT_CLR              char(6)                        null,
   use_status           char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table accrue_source
   add constraint PK_ACCRUE_SOURCE primary key (id)
go

/*==============================================================*/
/* Table: acct_control                                          */
/*==============================================================*/
create table acct_control (
   id                   numeric(8,0)                   identity,
   ope_code             char(1)                        null,
   org_code             char(6)                        null,
   subject_code         char(5)                        null,
   order_code           char(5)                        null,
   account_name         nvarchar(10)                   null,
   count_code           char(16)                       null,
   account_limit        char(10)                       null,
   icon_limit           char(1)                        null,
   detail_code          char(3)                        null,
   allow_direction      char(1)                        null,
   remaining_direction  char(1)                        null,
   account_type         char(1)                        null,
   detail_flag          char(1)                        null,
   borrow_code          char(4)                        null,
   loan_code            char(4)                        null,
   destroy_type         char(1)                        null,
   flush_type           char(1)                        null,
   hand_up_limit        char(3)                        null,
   close_limit          char(3)                        null,
   isallowA             char(1)                        null,
   directional_flag     char(1)                        null,
   public_type          char(1)                        null,
   public_count_type    char(1)                        null,
   remain_flag          char(1)                        null,
   car_flag             char(1)                        null,
   start_time           datetime                       null,
   last_time            datetime                       null,
   UDT_CLR              char(6)                        null,
   use_status           char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table acct_control
   add constraint PK_ACCT_CONTROL primary key (id)
go

/*==============================================================*/
/* Table: acct_open                                             */
/*==============================================================*/
create table acct_open (
   id                   numeric(8,0)                   identity,
   ope_code             char(1)                        null,
   account              char(21)                       null,
   subject_code         char(5)                        null,
   order_code           char(5)                        null,
   account_name         nvarchar(20)                   null,
   count_code           char(16)                       null,
   open_limit           char(10)                       null,
   icon_limit           char(1)                        null,
   allow_deriction      char(1)                        null,
   remain_deriction     char(1)                        null,
   account_type         char(1)                        null,
   detail_flag          char(1)                        null,
   borrow_code          char(4)                        null,
   load_code            char(4)                        null,
   destroy_flag         char(4)                        null,
   flush_type           char(1)                        null,
   flush_limit          char(1)                        null,
   close_limit          char(3)                        null,
   allow_input          char(1)                        null,
   deriction_flag       char(1)                        null,
   public_type          char(1)                        null,
   public_flag          char(1)                        null,
   remain_flag          char(1)                        null,
   org_code             char(6)                        null,
   start_time           datetime                       null,
   last_time            datetime                       null,
   UPT_CLR              char(6)                        null,
   use_status           char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table acct_open
   add constraint PK_ACCT_OPEN primary key (id)
go

/*==============================================================*/
/* Table: bank_car                                              */
/*==============================================================*/
create table bank_car (
   id                   numeric(8,0)                   identity,
   usage                char(1)                        null,
   car_type             char(1)                        null,
   car_media            char(1)                        null,
   car_grade            char(1)                        null,
   car_class            char(1)                        null,
   car_name             nvarchar(20)                   null,
   car_status           char(1)                        null,
   credit_grade         char(1)                        null,
   year_fee             numeric(8,0)                   null,
   attached_num         int                            null,
   attached_code        char(3)                        null,
   start_time           datetime                       null,
   UPT_DAT              datetime                       null,
   UPT_TLR              char(6)                        null,
   USE_STS              char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table bank_car
   add constraint PK_BANK_CAR primary key (id)
go

/*==============================================================*/
/* Table: country_code                                          */
/*==============================================================*/
create table country_code (
   id                   numeric(3)                     identity,
   country_code         char(3)                        not null,
   conutry_name         nvarchar(8)                    null,
   allow_flag           char(1)                        null,
   currency             char(4)                        null,
   rate                 char(21)                       null,
   start_time           datetime                       null,
   last_time            datetime                       null,
   UPT_TLR              char(6)                        null,
   use_status           char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table country_code
   add constraint PK_COUNTRY_CODE primary key (id)
go

/*==============================================================*/
/* Table: cus_relations                                         */
/*==============================================================*/
create table cus_relations (
   id                   numeric(8,0)                   identity,
   usage                char(1)                        null,
   cus_code             char(13)                       null,
   cus_name             nvarchar(20)                   null,
   other_cus_name       char(13)                       null,
   other_cus_code       nvarchar(20)                   null,
   certificate          char(1)                        null,
   certificate_code     char(30)                       null,
   cus_address          nvarchar(20)                   null,
   cus_phone            nvarchar(20)                   null,
   relp_code            char(3)                        null,
   start_code           datetime                       null,
   UDT_DAT              datetime                       null,
   UDT_CLR              char(6)                        null,
   use_status           char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table cus_relations
   add constraint PK_CUS_RELATIONS primary key (id)
go

/*==============================================================*/
/* Table: exchange_receipts                                     */
/*==============================================================*/
create table exchange_receipts (
   id                   numeric(8,0)                   identity,
   exchange_type        char(10)                       null,
   icon_name            char(10)                       null,
   icon_sign            char(3)                        null,
   rate_type            char(1)                        null,
   rate                 decimal(3,1)                   null,
   rate_flag            char(1)                        null,
   date_flag            char(1)                        null,
   date_upt_flag        char(1)                        null,
   start_time           datetime                       null,
   create_teller        char(6)                        null,
   create_time          datetime                       null,
   last_time            datetime                       null,
   UDT_CLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table exchange_receipts
   add constraint PK_EXCHANGE_RECEIPTS primary key (id)
go

/*==============================================================*/
/* Table: exg_tre_prt                                           */
/*==============================================================*/
create table exg_tre_prt (
   id                   numeric(8,0)                   identity,
   price_type           char(2)                        null,
   effect_date          datetime                       null,
   currency_type        char(6)                        null,
   currency_code        char(6)                        null,
   price                char(10)                       null,
   last_time            datetime                       null,
   UDT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table exg_tre_prt
   add constraint PK_EXG_TRE_PRT primary key (id)
go

/*==============================================================*/
/* Table: holiday_code                                          */
/*==============================================================*/
create table holiday_code (
   id                   numeric(3,0)                   identity,
   holiday_code         char(3)                        null,
   holiday_name         nvarchar(8)                    null,
   date                 date                           null,
   comment              text                           null,
   country_code         char(3)                        null,
   start_time           datetime                       null,
   last_time            datetime                       null,
   UPT_TLR              char(6)                        null,
   use_status           char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table holiday_code
   add constraint PK_HOLIDAY_CODE primary key (id)
go

/*==============================================================*/
/* Table: price_certificate                                     */
/*==============================================================*/
create table price_certificate (
   id                   numeric(8,0)                   identity,
   usage                char(1)                        null,
   price_code           char(6)                        null,
   price_name           nvarchar(20)                   null,
   coin                 char(10)                       null,
   timelimit            char(4)                        not null,
   price_type           char(1)                        null,
   is_contrl            char(1)                        null,
   count_unit           char(1)                        null,
   unit_num             char(3)                        null,
   flush_flag           char(1)                        null,
   valid_flag           char(1)                        null,
   start_time           datetime                       null,
   last_time            datetime                       null,
   UDT_CLR              char(6)                        null,
   use_status           char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table price_certificate
   add constraint PK_PRICE_CERTIFICATE primary key (id)
go

/*==============================================================*/
/* Table: public_code                                           */
/*==============================================================*/
create table public_code (
   id                   numeric(8,0)                   identity,
   public_code          char(15)                       null,
   public_type          char(2)                        null,
   public_name          nvarchar(25)                   null,
   comment              text                           null,
   control_message      nvarchar(10)                   null,
   start_time           datetime                       null,
   last_time            datetime                       null,
   UPT_TLR              char(6)                        null,
   use_status           char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table public_code
   add constraint PK_PUBLIC_CODE primary key (id)
go

/*==============================================================*/
/* Table: tb_user                                               */
/*==============================================================*/
create table tb_user (
   id                   numeric(8)                     identity,
   username             nvarchar(20)                   null,
   password             nvarchar(20)                   null,
   userAge              int                            null,
   userAddress          nvarchar(40)                   null,
   birthday             date                           null,
   nickname             nvarchar(50)                   null,
   email                nvarchar(40)                   null
)
with identity_gap = 1
go

alter table tb_user
   add constraint PK_TB_USER primary key (id)
go

/*==============================================================*/
/* Table: ticket_datum                                          */
/*==============================================================*/
create table ticket_datum (
   id                   numeric(8,0)                   identity,
   currency             char(6)                        null,
   currency_shorts      char(2)                        null,
   currency_symbol      char(2)                        null,
   face_value           char(2)                        null,
   last_time            datetime                       null,
   UDT_TLR              char(6)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table ticket_datum
   add constraint PK_TICKET_DATUM primary key (id)
go

/*==============================================================*/
/* Table: trade_classify                                        */
/*==============================================================*/
create table trade_classify (
   id                   numeric(8,0)                   identity,
   application_code     char(2)                        null,
   application_name     nvarchar(16)                   null,
   trade_type           char(2)                        null,
   trade_name           nvarchar(20)                   null
)
with identity_gap = 1
go

alter table trade_classify
   add constraint PK_TRADE_CLASSIFY primary key (id)
go

/*==============================================================*/
/* Table: trn_act_clf                                           */
/*==============================================================*/
create table trn_act_clf (
   id                   numeric(8,0)                   identity,
   ope_code             char(1)                        null,
   trade_code           char(4)                        null,
   trade_name           nvarchar(20)                   null,
   trade_subcode        char(3)                        null,
   comment              nvarchar(20)                   null,
   trade_pen            char(2)                        null,
   pen_reason           char(4)                        null,
   Journal_no           char(4)                        null,
   borrow_flag          char(1)                        null,
   subject_code         char(8)                        null,
   inr_act_no           char(7)                        null,
   out_act_gre          char(1)                        null,
   out_act_tye          char(1)                        null,
   read_flag            char(1)                        null,
   supervise_flag       char(1)                        null,
   start_date           datetime                       null,
   last_date            datetime                       null,
   UDT_TLR              char(6)                        null,
   USE_STS              char(1)                        null,
   REC_STS              char(1)                        null
)
with identity_gap = 1
go

alter table trn_act_clf
   add constraint PK_TRN_ACT_CLF primary key (id)
go

alter table AIFACB
   add constraint FK_AIFACB_REFERENCE_CIFCIB foreign key (CUS_IDT)
      references CIFCIB (CUS_IDT)
go

alter table AIFACT
   add constraint FK_AIFACT_REFERENCE_AIFACB foreign key (BAS_ACN)
      references AIFACB (BAS_ACN)
go

alter table AIFGLD
   add constraint FK_AIFGLD_REFERENCE_AIFACT foreign key (ACT_ACN)
      references AIFACT (ACT_ACN)
go

alter table AIFGLH
   add constraint FK_AIFGLH_REFERENCE_AIFGLD foreign key (GLD_KEY)
      references AIFGLD (GLD_KEY)
go

alter table AIFLNB
   add constraint FK_AIFLNB_REFERENCE_AIFACT foreign key (ACT_ACN)
      references AIFACT (ACT_ACN)
go

alter table AIFOUF
   add constraint FK_AIFOUF_REFERENCE_AIFACT foreign key (ACT_ACN)
      references AIFACT (ACT_ACN)
go

alter table AIFPLD
   add constraint FK_AIFPLD_REFERENCE_AIFACT foreign key (ACT_ACN)
      references AIFACT (ACT_ACN)
go

alter table AIFPLH
   add constraint FK_AIFPLH_REFERENCE_AIFPLD foreign key (PLD_KEY)
      references AIFPLD (PLD_KEY)
go

alter table AIFSTM
   add constraint FK_AIFSTM_REFERENCE_AIFACT foreign key (ACT_ACN)
      references AIFACT (ACT_ACN)
go

alter table AIFTDC
   add constraint FK_AIFTDC_REFERENCE_AIFACT foreign key (ACT_ACN)
      references AIFACT (ACT_ACN)
go

alter table CIFBDT
   add constraint FK_CIFBDT_REFERENCE_CIFCIB foreign key (CUS_IDT)
      references CIFCIB (CUS_IDT)
go

alter table CIFCIC
   add constraint FK_CIFCIC_REFERENCE_CIFCIB foreign key (CUS_IDT)
      references CIFCIB (CUS_IDT)
go

alter table CIFCIP
   add constraint FK_CIFCIP_REFERENCE_CIFCIB foreign key (CUS_IDT)
      references CIFCIB (CUS_IDT)
go

alter table CIFIBK
   add constraint FK_CIFIBK_REFERENCE_CIFCIB foreign key (CUS_IDT)
      references CIFCIB (CUS_IDT)
go

alter table CIFTLR
   add constraint FK_CIFTLR_REFERENCE_CIFBDT foreign key (BDT_TDT)
      references CIFBDT (BDT_TDT)
go

alter table CIFVBT
   add constraint FK_CIFVBT_REFERENCE_CIFBDT foreign key (BDT_TDT)
      references CIFBDT (BDT_TDT)
go

alter table PIFBUS
   add constraint FK_PIFBUS_REFERENCE_PIFAPP foreign key (APP_CDE)
      references PIFAPP (APP_CDE)
go

alter table PIFGLC
   add constraint FK_PIFGLC_REFERENCE_PIFCCY foreign key (CUR_CDE)
      references PIFCCY (CUR_CDE)
go

alter table PIFGLC
   add constraint FK_PIFGLC_REFERENCE_PIFITM foreign key (ITM_NUM)
      references PIFITM (ITM_NUM)
go

alter table PIFITM
   add constraint FK_PIFITM_REFERENCE_PIFANC foreign key (ANC_CDE)
      references PIFANC (ANC_CDE)
go

alter table PIFPDC
   add constraint FK_PIFPDC_REFERENCE_PIFBUS foreign key (BUS_CDE)
      references PIFBUS (BUS_CDE)
go

alter table PIFPLC
   add constraint FK_PIFPLC_REFERENCE_PIFGLC foreign key (GLC_CDE)
      references PIFGLC (GLC_CDE)
go

alter table PIFPRD
   add constraint FK_PIFPRD_REFERENCE_PIFPDC foreign key (PRD_CDE)
      references PIFPDC (PRD_CDE)
go

alter table PIFPRD
   add constraint FK_PIFPRD_REFERENCE_PIFIRTSDD foreign key (IRT_KEY)
      references PIFIRT (IRT_KEY)
go

alter table PIFPRD
   add constraint FK_PIFPRD_REFERENCE_PIFFRT foreign key (FRT_KEY)
      references PIFFRT (FRT_KEY)
go

alter table PIFPRD
   add constraint FK_PIFPRD_REFERENCE_PIFXRT foreign key (XRT_KEY)
      references PIFXRT (XRT_KEY)
go

alter table PIFTRX
   add constraint FK_PIFTRX_REFERENCE_PIFAPP foreign key (APP_CDE)
      references PIFAPP (APP_CDE)
go

alter table RIFAUA
   add constraint FK_RIFAUA_REFERENCE_PIFTRX foreign key (TRX_CDE)
      references PIFTRX (TRX_CDE)
go

alter table RIFCRC
   add constraint FK_RIFCRC_REFERENCE_RIFQUO foreign key (CUS_IDT)
      references RIFQUO (CUS_IDT)
go

alter table RIFQUO
   add constraint FK_RIFQUO_REFERENCE_CIFCIB foreign key (CUS_IDT)
      references CIFCIB (CUS_IDT)
go

alter table Reference_12
   add constraint FK_REFERENC_REFERENCE_AIFACT foreign key (ACT_ACN)
      references AIFACT (ACT_ACN)
go

alter table Reference_12
   add constraint FK_REFERENC_REFERENCE_AIFLNB foreign key (LON_BKN)
      references AIFLNB (LON_BKN)
go

alter table Reference_38
   add constraint FK_REFERENC_REFERENCE_PIFIRT_S foreign key (IRT_KEY)
      references PIFIRT (IRT_KEY)
go

alter table Reference_38
   add constraint FK_REF foreign key (PRD_SAL)
      references PIFPRD (PRD_SAL)
go

alter table Reference_39
   add constraint FK_REFERENC_REFERENCE_PIFFRT foreign key (FRT_KEY)
      references PIFFRT (FRT_KEY)
go

alter table Reference_39
   add constraint FK_REFERENC_REFE foreign key (PRD_SAL)
      references PIFPRD (PRD_SAL)
go

alter table Reference_40
   add constraint FK_REFERENC_REFERENCE_PIFXRT foreign key (XRT_KEY)
      references PIFXRT (XRT_KEY)
go

alter table Reference_40
   add constraint FK_REFERENC_REF foreign key (PRD_SAL)
      references PIFPRD (PRD_SAL)
go

alter table Reference_44
   add constraint FK_REFERENC_REFERENCE_PIFANC foreign key (ANC_CDE)
      references PIFANC (ANC_CDE)
go

alter table Reference_44
   add constraint FK_REFERENC_REFERENCE_PIFITM foreign key (ITM_NUM)
      references PIFITM (ITM_NUM)
go

alter table Relationship_40
   add constraint FK_RELATION_RELATIONS_PIFANC foreign key (ANC_CDE)
      references PIFANC (ANC_CDE)
go

alter table Relationship_40
   add constraint FK_RELATION_RELATIONS_PIFPLC foreign key (PLC_CDE)
      references PIFPLC (PLC_CDE)
go

alter table TIF999
   add constraint FK_TIF999_REFERENCE_TIFJNL foreign key (JRN_KEY)
      references TIFJNL (JRN_KEY)
go

alter table TIFACM
   add constraint FK_TIFACM_REFERENCE_TIFJNL foreign key (JRN_KEY)
      references TIFJNL (JRN_KEY)
go

alter table TIFCTR
   add constraint FK_TIFCTR_REFERENCE_TIFVLT foreign key (VLT_KEY)
      references TIFVLT (VLT_KEY)
go

alter table TIFJNB
   add constraint FK_TIFJNB_REFERENCE_TIFJNL foreign key (JRN_KEY)
      references TIFJNL (JRN_KEY)
go

alter table TIFJNL
   add constraint FK_TIFJNL_REFERENCE_CIFTLR foreign key (TLR_IDT)
      references CIFTLR (TLR_IDT)
go

alter table TIFJNL
   add constraint FK_TIFJNL_REFERENCE_TIFJNH foreign key (JRN_KEY)
      references TIFJNH (JRN_KEY)
go

alter table TIFVCH
   add constraint FK_TIFVCH_REFERENCE_TIFJNL foreign key (JRN_KEY)
      references TIFJNL (JRN_KEY)
go

alter table TIFVLT
   add constraint FK_TIFVLT_REFERENCE_CIFVBT foreign key (VBT_NUM)
      references CIFVBT (VBT_NUM)
go

