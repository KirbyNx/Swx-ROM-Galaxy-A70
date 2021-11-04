.class final enum Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;
.super Ljava/lang/Enum;
.source "EnterpriseConnectivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/billing/EnterpriseConnectivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "NetworkState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field public static final enum CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

.field public static final enum DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 489
    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    new-instance v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    const-string v1, "CONNECTED"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->CONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    .line 488
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    sget-object v4, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->DISCONNECTED:Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->$VALUES:[Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 488
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 488
    const-class v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;
    .registers 1

    .line 488
    sget-object v0, Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->$VALUES:[Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    invoke-virtual {v0}, [Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/enterprise/billing/EnterpriseConnectivity$NetworkState;

    return-object v0
.end method
