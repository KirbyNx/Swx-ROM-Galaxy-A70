.class public Lcom/android/server/enterprise/firewall/FirewallRuleAction;
.super Ljava/lang/Object;
.source "FirewallRuleAction.java"


# static fields
.field public static final ACCEPT:I = 0x1

.field private static final ACTION_NOT_SET:I = -0x1

.field public static final DROP:I = 0x2

.field public static final LOG:I = 0x4

.field public static final PROXY:I = 0x3

.field public static final REDIRECT:I = 0x0

.field public static final REDIRECT_EXCEPTION:I = 0x7

.field public static final REJECT:I = 0x6

.field public static final RETURN:I = 0x5


# instance fields
.field private mAction:I

.field private mIpAddress:Ljava/lang/String;

.field private mPort:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    return-void
.end method


# virtual methods
.method public getAction()I
    .registers 2

    .line 86
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    return v0
.end method

.method public getIpAddress()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mIpAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getPort()Ljava/lang/String;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mPort:Ljava/lang/String;

    return-object v0
.end method

.method public setAction(I)Z
    .registers 4
    .param p1, "action"    # I

    .line 77
    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    const/4 v1, 0x2

    if-eq p1, v1, :cond_17

    if-eqz p1, :cond_17

    const/4 v1, 0x3

    if-eq p1, v1, :cond_17

    const/4 v1, 0x4

    if-eq p1, v1, :cond_17

    const/4 v1, 0x5

    if-eq p1, v1, :cond_17

    const/4 v1, 0x6

    if-ne p1, v1, :cond_15

    goto :goto_17

    .line 82
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 79
    :cond_17
    :goto_17
    iput p1, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    .line 80
    return v0
.end method

.method public setIpAddress(Ljava/lang/String;)Z
    .registers 4
    .param p1, "ipAddress"    # Ljava/lang/String;

    .line 51
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    if-eqz v0, :cond_a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    goto :goto_a

    .line 56
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 53
    :cond_a
    :goto_a
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mIpAddress:Ljava/lang/String;

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public setPort(Ljava/lang/String;)Z
    .registers 4
    .param p1, "port"    # Ljava/lang/String;

    .line 64
    iget v0, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mAction:I

    if-eqz v0, :cond_a

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    goto :goto_a

    .line 69
    :cond_8
    const/4 v0, 0x0

    return v0

    .line 66
    :cond_a
    :goto_a
    iput-object p1, p0, Lcom/android/server/enterprise/firewall/FirewallRuleAction;->mPort:Ljava/lang/String;

    .line 67
    const/4 v0, 0x1

    return v0
.end method
