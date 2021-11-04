.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$HighRefreshRateList$xK1Sxzl5KLA2Wcn8-Fq6IGGUAVI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$HighRefreshRateList$xK1Sxzl5KLA2Wcn8-Fq6IGGUAVI;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerServiceExt$HighRefreshRateList$xK1Sxzl5KLA2Wcn8-Fq6IGGUAVI;->f$0:Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceExt$HighRefreshRateList;->lambda$updateBlockList$0$ActivityTaskManagerServiceExt$HighRefreshRateList()V

    return-void
.end method
