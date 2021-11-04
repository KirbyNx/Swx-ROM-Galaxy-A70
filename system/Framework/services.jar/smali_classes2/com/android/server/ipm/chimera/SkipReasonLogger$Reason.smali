.class final enum Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;
.super Ljava/lang/Enum;
.source "SkipReasonLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/SkipReasonLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum ADJ_OR_PROC_STATE:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum CACC:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum CACHED_EMPTY:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum INTERVAL:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum KILL_ONLY_ONE_SVC_AT_A_TIME:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum LRU:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum PERSISTENT_OR_PROTECTED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum PICKED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum SERVICE:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum UID:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum VISIBLE_SCREEN:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

.field public static final enum WAKELOCK:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;


# direct methods
.method static constructor <clinit>()V
    .registers 15

    .line 19
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "LRU"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 20
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "CACHED_EMPTY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 21
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "PERSISTENT_OR_PROTECTED"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 22
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "PICKED"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 23
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "CACC"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 24
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "INTERVAL"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 25
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "VISIBLE_SCREEN"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 26
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "WAKELOCK"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 27
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "SERVICE"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 28
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "UID"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 29
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "ADJ_OR_PROC_STATE"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 30
    new-instance v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    const-string v1, "KILL_ONLY_ONE_SVC_AT_A_TIME"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->KILL_ONLY_ONE_SVC_AT_A_TIME:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    .line 18
    const/16 v1, 0xc

    new-array v1, v1, [Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    sget-object v14, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->LRU:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v14, v1, v2

    sget-object v2, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->CACHED_EMPTY:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->PERSISTENT_OR_PROTECTED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->PICKED:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->CACC:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->INTERVAL:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->VISIBLE_SCREEN:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->WAKELOCK:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->SERVICE:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v2, v1, v10

    sget-object v2, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->UID:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v2, v1, v11

    sget-object v2, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->ADJ_OR_PROC_STATE:Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    aput-object v2, v1, v12

    aput-object v0, v1, v13

    sput-object v1, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->$VALUES:[Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 18
    const-class v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;
    .registers 1

    .line 18
    sget-object v0, Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->$VALUES:[Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    invoke-virtual {v0}, [Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ipm/chimera/SkipReasonLogger$Reason;

    return-object v0
.end method
