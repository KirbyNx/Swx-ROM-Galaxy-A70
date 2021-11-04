.class Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;
.super Ljava/lang/Object;
.source "ActivityManagerPerformance.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityManagerPerformance;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Wallpaper"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field pid:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 3
    .param p1, "pid"    # I
    .param p2, "packageName"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput p1, p0, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->pid:I

    .line 160
    iput-object p2, p0, Lcom/android/server/wm/ActivityManagerPerformance$Wallpaper;->packageName:Ljava/lang/String;

    .line 161
    return-void
.end method
