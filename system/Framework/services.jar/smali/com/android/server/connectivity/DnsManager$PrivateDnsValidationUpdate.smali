.class public Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateDnsValidationUpdate"
.end annotation


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final ipAddress:Ljava/net/InetAddress;

.field public final netId:I

.field public final validated:Z


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;Ljava/lang/String;Z)V
    .registers 5
    .param p1, "netId"    # I
    .param p2, "ipAddress"    # Ljava/net/InetAddress;
    .param p3, "hostname"    # Ljava/lang/String;
    .param p4, "validated"    # Z

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    iput p1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    .line 159
    iput-object p2, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->ipAddress:Ljava/net/InetAddress;

    .line 160
    iput-object p3, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->hostname:Ljava/lang/String;

    .line 161
    iput-boolean p4, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->validated:Z

    .line 162
    return-void
.end method
