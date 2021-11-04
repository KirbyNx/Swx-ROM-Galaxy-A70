.class public final synthetic Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$xuTIY37V0grB9RKe-fxYg91FVMo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Landroid/content/IntentFilter;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$xuTIY37V0grB9RKe-fxYg91FVMo;->f$0:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PackageConfigurationController$xuTIY37V0grB9RKe-fxYg91FVMo;->f$0:Landroid/content/IntentFilter;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/android/server/wm/PolicyImpl;

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/PackageConfigurationController;->lambda$initialize$1(Landroid/content/IntentFilter;Ljava/lang/String;Lcom/android/server/wm/PolicyImpl;)V

    return-void
.end method
