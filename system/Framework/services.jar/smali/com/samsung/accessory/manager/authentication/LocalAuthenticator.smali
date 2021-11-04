.class public abstract Lcom/samsung/accessory/manager/authentication/LocalAuthenticator;
.super Ljava/lang/Object;
.source "LocalAuthenticator.java"


# static fields
.field public static final MSG_AUTH_FORCE_UNVERIFY:I = 0x6

.field public static final MSG_AUTH_RESPONSE:I = 0x3

.field public static final MSG_AUTH_START:I = 0x2

.field public static final MSG_AUTH_STOP:I = 0x4

.field public static final MSG_AUTH_TIMEOUT:I = 0x5

.field public static final MSG_INITIALIZE:I = 0x1

.field public static final MSG_SET_AUTH_HALL:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method


# virtual methods
.method public convertMsg(I)Ljava/lang/String;
    .registers 3
    .param p1, "msg"    # I

    .line 20
    packed-switch p1, :pswitch_data_1a

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 34
    :pswitch_5
    const-string v0, "MSG_SET_AUTH_HALL"

    return-object v0

    .line 32
    :pswitch_8
    const-string v0, "MSG_AUTH_FORCE_UNVERIFY"

    return-object v0

    .line 30
    :pswitch_b
    const-string v0, "MSG_AUTH_TIMEOUT"

    return-object v0

    .line 28
    :pswitch_e
    const-string v0, "MSG_AUTH_STOP"

    return-object v0

    .line 26
    :pswitch_11
    const-string v0, "MSG_AUTH_RESPONSE"

    return-object v0

    .line 24
    :pswitch_14
    const-string v0, "MSG_AUTH_START"

    return-object v0

    .line 22
    :pswitch_17
    const-string v0, "MSG_INITIALIZE"

    return-object v0

    :pswitch_data_1a
    .packed-switch 0x1
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
        :pswitch_b
        :pswitch_8
        :pswitch_5
    .end packed-switch
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract systemReady()V
.end method
