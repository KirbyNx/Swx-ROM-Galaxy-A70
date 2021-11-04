.class synthetic Lcom/android/server/ipm/chimera/PolicyHandler$1;
.super Ljava/lang/Object;
.source "PolicyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/PolicyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$android$server$ipm$chimera$ChimeraCommonUtil$TriggerSource:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 330
    invoke-static {}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->values()[Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$1;->$SwitchMap$com$android$server$ipm$chimera$ChimeraCommonUtil$TriggerSource:[I

    :try_start_9
    sget-object v1, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_LMKD:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_13

    goto :goto_14

    :catch_13
    move-exception v0

    :goto_14
    :try_start_14
    sget-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$1;->$SwitchMap$com$android$server$ipm$chimera$ChimeraCommonUtil$TriggerSource:[I

    sget-object v1, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->TRIGGER_SOURCE_HOME_IDLE:Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;

    invoke-virtual {v1}, Lcom/android/server/ipm/chimera/ChimeraCommonUtil$TriggerSource;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_1f} :catch_20

    goto :goto_21

    :catch_20
    move-exception v0

    :goto_21
    return-void
.end method
