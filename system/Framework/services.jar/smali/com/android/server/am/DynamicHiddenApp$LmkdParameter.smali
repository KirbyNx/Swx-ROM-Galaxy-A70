.class public final enum Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;
.super Ljava/lang/Enum;
.source "DynamicHiddenApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/DynamicHiddenApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LmkdParameter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_CRITICAL_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_CRITICAL_UPGRADE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_DEBUG:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_DOWNGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_ENABLE_CMARBINFREE_SUB:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_ENABLE_UPGRADE_CRIADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_ENABLE_USERSPACE_LMK:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_FREELIMIT_ENABLE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_FREELIMIT_VAL:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_KILL_HEAVIEST_TASK:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_KILL_TIMEOUT_MS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_LOW_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_MEDIUM_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_PSI_CRITICAL_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_PSI_LOW_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_PSI_MEDIUM_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_UPGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

.field public static final enum LMK_USE_MINFREE_LEVELS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;


# direct methods
.method static constructor <clinit>()V
    .registers 17

    .line 1650
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_LOW_ADJ"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_LOW_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1651
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_MEDIUM_ADJ"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_MEDIUM_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1652
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_CRITICAL_ADJ"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_CRITICAL_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1653
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_DEBUG"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DEBUG:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1654
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_CRITICAL_UPGRADE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_CRITICAL_UPGRADE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1655
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_UPGRADE_PRESSURE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_UPGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1656
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_DOWNGRADE_PRESSURE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DOWNGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1657
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_KILL_HEAVIEST_TASK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_HEAVIEST_TASK:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1658
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_KILL_TIMEOUT_MS"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_TIMEOUT_MS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1659
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_USE_MINFREE_LEVELS"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_USE_MINFREE_LEVELS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1660
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_ENABLE_USERSPACE_LMK"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_USERSPACE_LMK:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1661
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_ENABLE_CMARBINFREE_SUB"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_CMARBINFREE_SUB:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1662
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_ENABLE_UPGRADE_CRIADJ"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_UPGRADE_CRIADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1663
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_FREELIMIT_ENABLE"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_ENABLE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1664
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_FREELIMIT_VAL"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_VAL:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1665
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_PSI_LOW_TH"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_LOW_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1666
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_PSI_MEDIUM_TH"

    const/16 v15, 0x10

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_MEDIUM_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1667
    new-instance v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const-string v1, "LMK_PSI_CRITICAL_TH"

    const/16 v15, 0x11

    invoke-direct {v0, v1, v15}, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_CRITICAL_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    .line 1649
    const/16 v1, 0x12

    new-array v1, v1, [Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    sget-object v16, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_LOW_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v16, v1, v2

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_MEDIUM_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_CRITICAL_ADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DEBUG:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_CRITICAL_UPGRADE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_UPGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_DOWNGRADE_PRESSURE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_HEAVIEST_TASK:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_KILL_TIMEOUT_MS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_USE_MINFREE_LEVELS:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_USERSPACE_LMK:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v12

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_CMARBINFREE_SUB:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v13

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_ENABLE_UPGRADE_CRIADJ:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    aput-object v2, v1, v14

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_ENABLE:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const/16 v3, 0xd

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_FREELIMIT_VAL:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const/16 v3, 0xe

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_LOW_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const/16 v3, 0xf

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->LMK_PSI_MEDIUM_TH:Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    const/16 v3, 0x10

    aput-object v2, v1, v3

    aput-object v0, v1, v15

    sput-object v1, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->$VALUES:[Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1649
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1649
    const-class v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;
    .registers 1

    .line 1649
    sget-object v0, Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->$VALUES:[Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    invoke-virtual {v0}, [Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/DynamicHiddenApp$LmkdParameter;

    return-object v0
.end method
