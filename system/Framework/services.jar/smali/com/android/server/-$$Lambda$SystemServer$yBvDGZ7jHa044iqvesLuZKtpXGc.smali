.class public final synthetic Lcom/android/server/-$$Lambda$SystemServer$yBvDGZ7jHa044iqvesLuZKtpXGc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/SystemServer;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/SystemServer;Landroid/content/Context;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$SystemServer$yBvDGZ7jHa044iqvesLuZKtpXGc;->f$0:Lcom/android/server/SystemServer;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$SystemServer$yBvDGZ7jHa044iqvesLuZKtpXGc;->f$1:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/server/-$$Lambda$SystemServer$yBvDGZ7jHa044iqvesLuZKtpXGc;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/-$$Lambda$SystemServer$yBvDGZ7jHa044iqvesLuZKtpXGc;->f$0:Lcom/android/server/SystemServer;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$SystemServer$yBvDGZ7jHa044iqvesLuZKtpXGc;->f$1:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/server/-$$Lambda$SystemServer$yBvDGZ7jHa044iqvesLuZKtpXGc;->f$2:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServer;->lambda$startOtherServices$5$SystemServer(Landroid/content/Context;Z)V

    return-void
.end method
