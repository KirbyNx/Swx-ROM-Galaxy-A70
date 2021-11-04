.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$ProxyTracker$V8d5RR1I7NIjG1iRNqGCmLnqOb4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/ProxyTracker;

.field public final synthetic f$1:Landroid/net/ProxyInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/ProxyTracker;Landroid/net/ProxyInfo;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$ProxyTracker$V8d5RR1I7NIjG1iRNqGCmLnqOb4;->f$0:Lcom/android/server/connectivity/ProxyTracker;

    iput-object p2, p0, Lcom/android/server/connectivity/-$$Lambda$ProxyTracker$V8d5RR1I7NIjG1iRNqGCmLnqOb4;->f$1:Landroid/net/ProxyInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$ProxyTracker$V8d5RR1I7NIjG1iRNqGCmLnqOb4;->f$0:Lcom/android/server/connectivity/ProxyTracker;

    iget-object v1, p0, Lcom/android/server/connectivity/-$$Lambda$ProxyTracker$V8d5RR1I7NIjG1iRNqGCmLnqOb4;->f$1:Landroid/net/ProxyInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/ProxyTracker;->lambda$loadGlobalProxy$0$ProxyTracker(Landroid/net/ProxyInfo;)V

    return-void
.end method
