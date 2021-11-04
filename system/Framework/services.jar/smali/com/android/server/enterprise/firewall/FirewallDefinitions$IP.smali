.class public Lcom/android/server/enterprise/firewall/FirewallDefinitions$IP;
.super Ljava/lang/Object;
.source "FirewallDefinitions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/firewall/FirewallDefinitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IP"
.end annotation


# static fields
.field public static final V4:I = 0x4

.field public static final V4V6:I = 0x2e

.field public static final V6:I = 0x6


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
