.class final enum Lcom/android/server/VoIPInterfaceManager$CallState;
.super Ljava/lang/Enum;
.source "VoIPInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoIPInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/VoIPInterfaceManager$CallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/VoIPInterfaceManager$CallState;

.field public static final enum ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

.field public static final enum ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

.field public static final enum DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

.field public static final enum DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

.field public static final enum DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

.field public static final enum HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

.field public static final enum IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

.field public static final enum INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

.field public static final enum RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

.field public static final enum WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;


# direct methods
.method static constructor <clinit>()V
    .registers 13

    .line 250
    new-instance v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/VoIPInterfaceManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    new-instance v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    const-string v1, "ACTIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/VoIPInterfaceManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    new-instance v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    const-string v1, "HOLDING"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/VoIPInterfaceManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    new-instance v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    const-string v1, "DIALING"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/VoIPInterfaceManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    new-instance v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    const-string v1, "RINGING"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/VoIPInterfaceManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    new-instance v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    const-string v1, "ALERTING"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/VoIPInterfaceManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    new-instance v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    const-string v1, "INCOMING"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/VoIPInterfaceManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    new-instance v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    const-string v1, "WAITING"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/VoIPInterfaceManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    new-instance v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    const-string v1, "DISCONNECTED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/VoIPInterfaceManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    new-instance v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    const-string v1, "DISCONNECTING"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/VoIPInterfaceManager$CallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    .line 247
    const/16 v1, 0xa

    new-array v1, v1, [Lcom/android/server/VoIPInterfaceManager$CallState;

    sget-object v12, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    aput-object v12, v1, v2

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    aput-object v2, v1, v3

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    aput-object v2, v1, v4

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    aput-object v2, v1, v5

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    aput-object v2, v1, v6

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    aput-object v2, v1, v7

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    aput-object v2, v1, v8

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    aput-object v2, v1, v9

    sget-object v2, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    aput-object v2, v1, v10

    aput-object v0, v1, v11

    sput-object v1, Lcom/android/server/VoIPInterfaceManager$CallState;->$VALUES:[Lcom/android/server/VoIPInterfaceManager$CallState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 247
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/VoIPInterfaceManager$CallState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .line 247
    const-class v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/VoIPInterfaceManager$CallState;

    return-object v0
.end method

.method public static values()[Lcom/android/server/VoIPInterfaceManager$CallState;
    .registers 1

    .line 247
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->$VALUES:[Lcom/android/server/VoIPInterfaceManager$CallState;

    invoke-virtual {v0}, [Lcom/android/server/VoIPInterfaceManager$CallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/VoIPInterfaceManager$CallState;

    return-object v0
.end method


# virtual methods
.method public isCallActive()Z
    .registers 2

    .line 256
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->ACTIVE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCallAlerting()Z
    .registers 2

    .line 259
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->ALERTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCallDialing()Z
    .registers 2

    .line 255
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->DIALING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCallDisconnected()Z
    .registers 2

    .line 264
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTED:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCallDisconnecting()Z
    .registers 2

    .line 263
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->DISCONNECTING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCallHold()Z
    .registers 2

    .line 257
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->HOLDING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCallIdle()Z
    .registers 2

    .line 253
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->IDLE:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCallIncoming()Z
    .registers 2

    .line 260
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->INCOMING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCallRinging()Z
    .registers 2

    .line 254
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->RINGING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isCallWaiting()Z
    .registers 2

    .line 261
    sget-object v0, Lcom/android/server/VoIPInterfaceManager$CallState;->WAITING:Lcom/android/server/VoIPInterfaceManager$CallState;

    if-ne p0, v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
