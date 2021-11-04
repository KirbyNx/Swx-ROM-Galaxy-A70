.class final enum Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;
.super Ljava/lang/Enum;
.source "AggressivePolicyHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ipm/chimera/AggressivePolicyHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ProtectLevel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

.field public static final enum HEAVY:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

.field public static final enum NORMAL:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 42
    new-instance v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 43
    new-instance v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    const-string v1, "HEAVY"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->HEAVY:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    .line 41
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    sget-object v4, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->NORMAL:Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->$VALUES:[Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 41
    const-class v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    return-object v0
.end method

.method public static values()[Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;
    .registers 1

    .line 41
    sget-object v0, Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->$VALUES:[Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    invoke-virtual {v0}, [Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/ipm/chimera/AggressivePolicyHandler$ProtectLevel;

    return-object v0
.end method
