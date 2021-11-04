.class final Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H$Duration;
.super Ljava/lang/Object;
.source "PackageSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Duration"
.end annotation


# static fields
.field private static final SAVE_DELAY_DURATION:I = 0x7d0


# instance fields
.field final synthetic this$1:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;


# direct methods
.method constructor <init>(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;)V
    .registers 2
    .param p1, "this$1"    # Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;

    .line 376
    iput-object p1, p0, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H$Duration;->this$1:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$H;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
