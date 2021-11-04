.class public final enum Lcom/samsung/android/mcf/handover/ConnectionType;
.super Ljava/lang/Enum;
.source "ConnectionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/mcf/handover/ConnectionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/samsung/android/mcf/handover/ConnectionType;

.field public static final enum DO_NOT_CARE:Lcom/samsung/android/mcf/handover/ConnectionType;

.field public static final enum NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

.field public static final enum WIFI_AWARE:Lcom/samsung/android/mcf/handover/ConnectionType;

.field public static final enum WIFI_DIRECT:Lcom/samsung/android/mcf/handover/ConnectionType;


# instance fields
.field public final description:Ljava/lang/String;

.field public final value:I


# direct methods
.method public static constructor <clinit>()V
    .registers 8

    .line 13
    new-instance v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const-string v3, "Connection type NONE"

    invoke-direct {v0, v1, v2, v2, v3}, Lcom/samsung/android/mcf/handover/ConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

    .line 17
    new-instance v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    const-string v1, "WIFI_AWARE"

    const/4 v3, 0x1

    const-string v4, "Wifi Aware"

    invoke-direct {v0, v1, v3, v3, v4}, Lcom/samsung/android/mcf/handover/ConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_AWARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    .line 21
    new-instance v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    const-string v1, "WIFI_DIRECT"

    const/4 v4, 0x2

    const-string v5, "Wifi Direct"

    invoke-direct {v0, v1, v4, v4, v5}, Lcom/samsung/android/mcf/handover/ConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_DIRECT:Lcom/samsung/android/mcf/handover/ConnectionType;

    .line 25
    new-instance v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    const-string v1, "DO_NOT_CARE"

    const/4 v5, 0x3

    const/16 v6, 0x1000

    const-string v7, "MCF select network type"

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/samsung/android/mcf/handover/ConnectionType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->DO_NOT_CARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    .line 9
    const/4 v1, 0x4

    new-array v1, v1, [Lcom/samsung/android/mcf/handover/ConnectionType;

    sget-object v6, Lcom/samsung/android/mcf/handover/ConnectionType;->NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

    aput-object v6, v1, v2

    sget-object v2, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_AWARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    aput-object v2, v1, v3

    sget-object v2, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_DIRECT:Lcom/samsung/android/mcf/handover/ConnectionType;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/samsung/android/mcf/handover/ConnectionType;->$VALUES:[Lcom/samsung/android/mcf/handover/ConnectionType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 37
    iput p3, p0, Lcom/samsung/android/mcf/handover/ConnectionType;->value:I

    .line 38
    iput-object p4, p0, Lcom/samsung/android/mcf/handover/ConnectionType;->description:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(I)Lcom/samsung/android/mcf/handover/ConnectionType;
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x1

    if-eq p0, v0, :cond_e

    const/4 v0, 0x2

    if-eq p0, v0, :cond_b

    .line 57
    sget-object p0, Lcom/samsung/android/mcf/handover/ConnectionType;->DO_NOT_CARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object p0

    .line 55
    :cond_b
    sget-object p0, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_DIRECT:Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object p0

    .line 53
    :cond_e
    sget-object p0, Lcom/samsung/android/mcf/handover/ConnectionType;->WIFI_AWARE:Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object p0

    .line 51
    :cond_11
    sget-object p0, Lcom/samsung/android/mcf/handover/ConnectionType;->NONE:Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/mcf/handover/ConnectionType;
    .registers 2

    .line 9
    const-class v0, Lcom/samsung/android/mcf/handover/ConnectionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/mcf/handover/ConnectionType;
    .registers 1

    .line 9
    sget-object v0, Lcom/samsung/android/mcf/handover/ConnectionType;->$VALUES:[Lcom/samsung/android/mcf/handover/ConnectionType;

    invoke-virtual {v0}, [Lcom/samsung/android/mcf/handover/ConnectionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/mcf/handover/ConnectionType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/samsung/android/mcf/handover/ConnectionType;->value:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/samsung/android/mcf/handover/ConnectionType;->description:Ljava/lang/String;

    return-object v0
.end method
