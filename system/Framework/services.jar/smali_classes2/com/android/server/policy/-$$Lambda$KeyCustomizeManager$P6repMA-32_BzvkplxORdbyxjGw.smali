.class public final synthetic Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$P6repMA-32_BzvkplxORdbyxjGw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/KeyCustomizeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/KeyCustomizeManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$P6repMA-32_BzvkplxORdbyxjGw;->f$0:Lcom/android/server/policy/KeyCustomizeManager;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$KeyCustomizeManager$P6repMA-32_BzvkplxORdbyxjGw;->f$0:Lcom/android/server/policy/KeyCustomizeManager;

    invoke-virtual {v0}, Lcom/android/server/policy/KeyCustomizeManager;->lambda$updateCallback$5$KeyCustomizeManager()Z

    move-result v0

    return v0
.end method
