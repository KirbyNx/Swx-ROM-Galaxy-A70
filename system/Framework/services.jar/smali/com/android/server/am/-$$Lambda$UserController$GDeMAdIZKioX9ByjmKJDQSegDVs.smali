.class public final synthetic Lcom/android/server/am/-$$Lambda$UserController$GDeMAdIZKioX9ByjmKJDQSegDVs;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/UserController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/UserController;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$UserController$GDeMAdIZKioX9ByjmKJDQSegDVs;->f$0:Lcom/android/server/am/UserController;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$UserController$GDeMAdIZKioX9ByjmKJDQSegDVs;->f$0:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->lambda$scheduleStartProfiles$9$UserController()V

    return-void
.end method
