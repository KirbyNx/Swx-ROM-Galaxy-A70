.class public final enum Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;
.super Ljava/lang/Enum;
.source "PolicyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/PolicyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "ProtectedReason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

.field public static final enum ACTIVITY_TIME:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

.field public static final enum ALREADY_DIED:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

.field public static final enum EXECUTING_SERVICE:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

.field public static final enum HAS_CONNECTION_PROVIDER:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

.field public static final enum NONE:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

.field public static final enum RUNNING_INTENT:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

.field public static final enum VISIBLE_ADJ:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .line 277
    new-instance v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    .line 278
    new-instance v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "ALREADY_DIED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->ALREADY_DIED:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    .line 279
    new-instance v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "EXECUTING_SERVICE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->EXECUTING_SERVICE:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    .line 280
    new-instance v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "RUNNING_INTENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->RUNNING_INTENT:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    .line 281
    new-instance v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "ACTIVITY_TIME"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    .line 282
    new-instance v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "VISIBLE_ADJ"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->VISIBLE_ADJ:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    .line 283
    new-instance v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    const-string v1, "HAS_CONNECTION_PROVIDER"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->HAS_CONNECTION_PROVIDER:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    .line 276
    const/4 v1, 0x7

    new-array v1, v1, [Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    sget-object v9, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->NONE:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    aput-object v9, v1, v2

    sget-object v2, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->ALREADY_DIED:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->EXECUTING_SERVICE:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->RUNNING_INTENT:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->ACTIVITY_TIME:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->VISIBLE_ADJ:Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->$VALUES:[Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 276
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 276
    const-class v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;
    .registers 1

    .line 276
    sget-object v0, Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->$VALUES:[Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    invoke-virtual {v0}, [Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ipm/chimera/PolicyHandler$ProtectedReason;

    return-object v0
.end method
