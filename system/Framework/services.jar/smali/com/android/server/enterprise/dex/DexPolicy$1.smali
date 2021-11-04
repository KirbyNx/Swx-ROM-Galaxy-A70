.class Lcom/android/server/enterprise/dex/DexPolicy$1;
.super Ljava/lang/Object;
.source "DexPolicy.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeBlocker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/dex/DexPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/dex/DexPolicy;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/dex/DexPolicy;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/enterprise/dex/DexPolicy;

    .line 89
    iput-object p1, p0, Lcom/android/server/enterprise/dex/DexPolicy$1;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBlocked()Ljava/lang/String;
    .registers 3

    .line 93
    iget-object v0, p0, Lcom/android/server/enterprise/dex/DexPolicy$1;->this$0:Lcom/android/server/enterprise/dex/DexPolicy;

    # getter for: Lcom/android/server/enterprise/dex/DexPolicy;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/enterprise/dex/DexPolicy;->access$000(Lcom/android/server/enterprise/dex/DexPolicy;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x10403ac

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
