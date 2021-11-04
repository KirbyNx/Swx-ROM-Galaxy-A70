.class public final enum Lcom/android/server/am/KillPolicyManager$KpmState;
.super Ljava/lang/Enum;
.source "KillPolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/KillPolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KpmState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/am/KillPolicyManager$KpmState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

.field public static final enum NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;


# instance fields
.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .line 1259
    new-instance v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "None"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1260
    new-instance v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    const-string v1, "LIGHT"

    const/4 v3, 0x1

    const-string v4, "Light"

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1261
    new-instance v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    const-string v1, "NORMAL"

    const/4 v4, 0x2

    const-string v5, "Normal"

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1262
    new-instance v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    const-string v1, "HEAVY"

    const/4 v5, 0x3

    const-string v6, "Heavy"

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1263
    new-instance v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    const-string v1, "CRITICAL"

    const/4 v6, 0x4

    const-string v7, "Critical"

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/am/KillPolicyManager$KpmState;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->CRITICAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    .line 1258
    const/4 v1, 0x5

    new-array v1, v1, [Lcom/android/server/am/KillPolicyManager$KpmState;

    sget-object v7, Lcom/android/server/am/KillPolicyManager$KpmState;->NONE:Lcom/android/server/am/KillPolicyManager$KpmState;

    aput-object v7, v1, v2

    sget-object v2, Lcom/android/server/am/KillPolicyManager$KpmState;->LIGHT:Lcom/android/server/am/KillPolicyManager$KpmState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/am/KillPolicyManager$KpmState;->NORMAL:Lcom/android/server/am/KillPolicyManager$KpmState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/am/KillPolicyManager$KpmState;->HEAVY:Lcom/android/server/am/KillPolicyManager$KpmState;

    aput-object v2, v1, v5

    aput-object v0, v1, v6

    sput-object v1, Lcom/android/server/am/KillPolicyManager$KpmState;->$VALUES:[Lcom/android/server/am/KillPolicyManager$KpmState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .param p3, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1267
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1268
    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$KpmState;->mName:Ljava/lang/String;

    .line 1269
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 1258
    const-class v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/KillPolicyManager$KpmState;
    .registers 1

    .line 1258
    sget-object v0, Lcom/android/server/am/KillPolicyManager$KpmState;->$VALUES:[Lcom/android/server/am/KillPolicyManager$KpmState;

    invoke-virtual {v0}, [Lcom/android/server/am/KillPolicyManager$KpmState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/KillPolicyManager$KpmState;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .line 1272
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$KpmState;->mName:Ljava/lang/String;

    return-object v0
.end method
