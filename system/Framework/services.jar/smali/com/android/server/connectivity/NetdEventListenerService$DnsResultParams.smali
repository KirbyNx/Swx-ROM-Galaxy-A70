.class public Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;
.super Ljava/lang/Object;
.source "NetdEventListenerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetdEventListenerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DnsResultParams"
.end annotation


# instance fields
.field final mHostname:Ljava/lang/String;

.field final mNetId:I

.field final mReturnCode:I

.field final mUid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .registers 5
    .param p1, "netId"    # I
    .param p2, "returnCode"    # I
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "uid"    # I

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 310
    iput p1, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mNetId:I

    .line 311
    iput p2, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mReturnCode:I

    .line 312
    iput-object p3, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mHostname:Ljava/lang/String;

    .line 313
    iput p4, p0, Lcom/android/server/connectivity/NetdEventListenerService$DnsResultParams;->mUid:I

    .line 314
    return-void
.end method
