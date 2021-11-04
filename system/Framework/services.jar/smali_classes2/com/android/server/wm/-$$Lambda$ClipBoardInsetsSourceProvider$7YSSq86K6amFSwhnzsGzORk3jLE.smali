.class public final synthetic Lcom/android/server/wm/-$$Lambda$ClipBoardInsetsSourceProvider$7YSSq86K6amFSwhnzsGzORk3jLE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ClipBoardInsetsSourceProvider;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ClipBoardInsetsSourceProvider;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ClipBoardInsetsSourceProvider$7YSSq86K6amFSwhnzsGzORk3jLE;->f$0:Lcom/android/server/wm/ClipBoardInsetsSourceProvider;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ClipBoardInsetsSourceProvider$7YSSq86K6amFSwhnzsGzORk3jLE;->f$0:Lcom/android/server/wm/ClipBoardInsetsSourceProvider;

    invoke-virtual {v0}, Lcom/android/server/wm/ClipBoardInsetsSourceProvider;->lambda$scheduleShowClipBoardPostLayout$0$ClipBoardInsetsSourceProvider()V

    return-void
.end method
