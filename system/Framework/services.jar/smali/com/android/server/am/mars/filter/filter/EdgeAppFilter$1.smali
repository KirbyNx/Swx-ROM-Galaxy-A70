.class Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;
.super Landroid/database/ContentObserver;
.source "EdgeAppFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->registerEnabledCocktailBarChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;


# direct methods
.method constructor <init>(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 101
    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 4
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 104
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;

    # invokes: Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->getCocktailBarPackage()V
    invoke-static {v0}, Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;->access$200(Lcom/android/server/am/mars/filter/filter/EdgeAppFilter;)V

    .line 105
    return-void
.end method
