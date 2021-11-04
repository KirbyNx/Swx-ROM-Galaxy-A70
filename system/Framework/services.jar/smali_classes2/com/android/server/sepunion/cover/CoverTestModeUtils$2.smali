.class Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;
.super Landroid/database/ContentObserver;
.source "CoverTestModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/sepunion/cover/CoverTestModeUtils;-><init>(Landroid/content/Context;Lcom/android/server/sepunion/cover/CoverTestModeUtils$OnCoverTestModeChanged;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;


# direct methods
.method constructor <init>(Lcom/android/server/sepunion/cover/CoverTestModeUtils;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/sepunion/cover/CoverTestModeUtils;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 52
    iput-object p1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 5
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 54
    iget-object v0, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    # invokes: Lcom/android/server/sepunion/cover/CoverTestModeUtils;->getTestModeFromSetting()I
    invoke-static {v0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->access$200(Lcom/android/server/sepunion/cover/CoverTestModeUtils;)I

    move-result v0

    .line 55
    .local v0, "testMode":I
    iget-object v1, p0, Lcom/android/server/sepunion/cover/CoverTestModeUtils$2;->this$0:Lcom/android/server/sepunion/cover/CoverTestModeUtils;

    # invokes: Lcom/android/server/sepunion/cover/CoverTestModeUtils;->updateCoverTestMode(I)V
    invoke-static {v1, v0}, Lcom/android/server/sepunion/cover/CoverTestModeUtils;->access$300(Lcom/android/server/sepunion/cover/CoverTestModeUtils;I)V

    .line 56
    return-void
.end method
