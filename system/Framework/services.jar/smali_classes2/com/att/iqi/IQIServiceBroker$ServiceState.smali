.class final enum Lcom/att/iqi/IQIServiceBroker$ServiceState;
.super Ljava/lang/Enum;
.source "IQIServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/att/iqi/IQIServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "ServiceState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/att/iqi/IQIServiceBroker$ServiceState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/att/iqi/IQIServiceBroker$ServiceState;

.field public static final enum OFF:Lcom/att/iqi/IQIServiceBroker$ServiceState;

.field public static final enum ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 118
    new-instance v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;

    const-string v1, "OFF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/att/iqi/IQIServiceBroker$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;->OFF:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    .line 119
    new-instance v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;

    const-string v1, "ON"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/att/iqi/IQIServiceBroker$ServiceState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;->ON:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    .line 117
    const/4 v1, 0x2

    new-array v1, v1, [Lcom/att/iqi/IQIServiceBroker$ServiceState;

    sget-object v4, Lcom/att/iqi/IQIServiceBroker$ServiceState;->OFF:Lcom/att/iqi/IQIServiceBroker$ServiceState;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lcom/att/iqi/IQIServiceBroker$ServiceState;->$VALUES:[Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 117
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/att/iqi/IQIServiceBroker$ServiceState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 117
    const-class v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-object v0
.end method

.method public static values()[Lcom/att/iqi/IQIServiceBroker$ServiceState;
    .registers 1

    .line 117
    sget-object v0, Lcom/att/iqi/IQIServiceBroker$ServiceState;->$VALUES:[Lcom/att/iqi/IQIServiceBroker$ServiceState;

    invoke-virtual {v0}, [Lcom/att/iqi/IQIServiceBroker$ServiceState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/att/iqi/IQIServiceBroker$ServiceState;

    return-object v0
.end method
