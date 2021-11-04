.class public final enum Lcom/android/server/location/gnss/GnssConstants$Vendor;
.super Ljava/lang/Enum;
.source "GnssConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Vendor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/location/gnss/GnssConstants$Vendor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum ARG_UFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum CAD_BMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum CAD_RWC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum CAD_TLS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum CAD_XAC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum CHN_CHN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum CHN_CHU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum CHN_CTC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum JPN_DCM:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum JPN_KDI:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum JPN_RKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum KOR_LGT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum KOR_SKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum MEX_IUS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum MEX_MNX:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum MEX_UNE:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum NO_OPERATOR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum PER_PEO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum PER_PET:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum PER_PNT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum SUI_SWC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum SWA_IND:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum TUR_TUR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_ACG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_AIO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_ATT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_BST:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_DSH:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_SPR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_TFA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_TFC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_TFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_TFO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_TMK:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_TMO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_USC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_VMU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_VZW:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_XAA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_XAG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_XAR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

.field public static final enum USA_XAS:Lcom/android/server/location/gnss/GnssConstants$Vendor;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 160
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_TMO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_ATT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_ATT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_AIO"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_AIO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_TMK"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMK:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_TFN"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_TFO"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_TFA"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_TFC"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_XAA"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_XAR"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_XAG"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_DSH"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_DSH:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 161
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_VZW"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_VZW:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_SPR"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_SPR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_XAS"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_BST"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_BST:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_VMU"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_VMU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_USC"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_USC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "USA_ACG"

    const/16 v15, 0x12

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_ACG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 162
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "JPN_DCM"

    const/16 v15, 0x13

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_DCM:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "JPN_KDI"

    const/16 v15, 0x14

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_KDI:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "JPN_RKT"

    const/16 v15, 0x15

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_RKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 163
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "CAD_TLS"

    const/16 v15, 0x16

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_TLS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "CAD_BMC"

    const/16 v15, 0x17

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_BMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "CAD_RWC"

    const/16 v15, 0x18

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_RWC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "CAD_XAC"

    const/16 v15, 0x19

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_XAC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 164
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "KOR_SKT"

    const/16 v15, 0x1a

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_SKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "KOR_KTT"

    const/16 v15, 0x1b

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "KOR_LGT"

    const/16 v15, 0x1c

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_LGT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 165
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "CHN_CMC"

    const/16 v15, 0x1d

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "CHN_CTC"

    const/16 v15, 0x1e

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CTC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "CHN_CHU"

    const/16 v15, 0x1f

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "CHN_CHN"

    const/16 v15, 0x20

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "CHN_CHC"

    const/16 v15, 0x21

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 166
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "ARG_UFN"

    const/16 v15, 0x22

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->ARG_UFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 167
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "MEX_MNX"

    const/16 v15, 0x23

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_MNX:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "MEX_IUS"

    const/16 v15, 0x24

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_IUS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "MEX_UNE"

    const/16 v15, 0x25

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_UNE:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 168
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "PER_PEO"

    const/16 v15, 0x26

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PEO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "PER_PNT"

    const/16 v15, 0x27

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PNT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "PER_PET"

    const/16 v15, 0x28

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PET:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 169
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "SUI_SWC"

    const/16 v15, 0x29

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->SUI_SWC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 170
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "TUR_TUR"

    const/16 v15, 0x2a

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->TUR_TUR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 171
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "SWA_IND"

    const/16 v15, 0x2b

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->SWA_IND:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 172
    new-instance v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const-string v1, "NO_OPERATOR"

    const/16 v15, 0x2c

    invoke-direct {v0, v1, v15}, Lcom/android/server/location/gnss/GnssConstants$Vendor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->NO_OPERATOR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    .line 159
    const/16 v1, 0x2d

    new-array v1, v1, [Lcom/android/server/location/gnss/GnssConstants$Vendor;

    sget-object v15, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v15, v1, v2

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_ATT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_AIO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TMK:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_TFC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAA:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_DSH:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_VZW:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_SPR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_XAS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_BST:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_VMU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_USC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x11

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->USA_ACG:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x12

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_DCM:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x13

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_KDI:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x14

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->JPN_RKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x15

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_TLS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x16

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_BMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x17

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_RWC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x18

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CAD_XAC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x19

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_SKT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_KTT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->KOR_LGT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CMC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CTC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHU:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x20

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->CHN_CHC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x21

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->ARG_UFN:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x22

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_MNX:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x23

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_IUS:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x24

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->MEX_UNE:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x25

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PEO:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x26

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PNT:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x27

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->PER_PET:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x28

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->SUI_SWC:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x29

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->TUR_TUR:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/location/gnss/GnssConstants$Vendor;->SWA_IND:Lcom/android/server/location/gnss/GnssConstants$Vendor;

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    const/16 v2, 0x2c

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/server/location/gnss/GnssConstants$Vendor;->$VALUES:[Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 159
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/location/gnss/GnssConstants$Vendor;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 159
    const-class v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0
.end method

.method public static values()[Lcom/android/server/location/gnss/GnssConstants$Vendor;
    .registers 1

    .line 159
    sget-object v0, Lcom/android/server/location/gnss/GnssConstants$Vendor;->$VALUES:[Lcom/android/server/location/gnss/GnssConstants$Vendor;

    invoke-virtual {v0}, [Lcom/android/server/location/gnss/GnssConstants$Vendor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/location/gnss/GnssConstants$Vendor;

    return-object v0
.end method
