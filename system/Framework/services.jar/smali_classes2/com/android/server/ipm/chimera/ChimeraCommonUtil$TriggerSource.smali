.class public final enum Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;
.super Ljava/lang/Enum;
.source "ChimeraCommonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/ChimeraCommonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TriggerSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

.field public static final enum TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .line 22
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    const-string v1, "TRIGGER_SOURCE_LMKD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 23
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    const-string v1, "TRIGGER_SOURCE_BOTTLENECK_HINT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 24
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    const-string v1, "TRIGGER_SOURCE_HOME_IDLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 25
    new-instance v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    const-string v1, "TRIGGER_SOURCE_PMM_CRITICAL"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_PMM_CRITICAL:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    .line 21
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    sget-object v6, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    aput-object v6, v1, v2

    sget-object v2, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_BOTTLENECK_HINT:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->$VALUES:[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;
    .registers 1

    .line 21
    sget-object v0, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->$VALUES:[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v0}, [Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    return-object v0
.end method
