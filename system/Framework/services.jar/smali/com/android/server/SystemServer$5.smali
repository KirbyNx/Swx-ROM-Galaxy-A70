.class Lcom/android/server/SystemServer$5;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/os/IServiceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/SystemServer;->lambda$startOtherServices$5(Landroid/content/Context;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemServer;


# direct methods
.method constructor <init>(Lcom/android/server/SystemServer;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/SystemServer;

    .line 3844
    iput-object p1, p0, Lcom/android/server/SystemServer$5;->this$0:Lcom/android/server/SystemServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/content/Context;)Landroid/os/IBinder;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 3847
    new-instance v0, Lcom/android/server/IcccManagerService;

    invoke-direct {v0, p1}, Lcom/android/server/IcccManagerService;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
