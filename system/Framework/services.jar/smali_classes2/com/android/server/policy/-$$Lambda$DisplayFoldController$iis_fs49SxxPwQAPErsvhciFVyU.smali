.class public final synthetic Lcom/android/server/policy/-$$Lambda$DisplayFoldController$iis_fs49SxxPwQAPErsvhciFVyU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/policy/DisplayFoldController;

.field public final synthetic f$1:Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/DisplayFoldController;Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$iis_fs49SxxPwQAPErsvhciFVyU;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iput-object p2, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$iis_fs49SxxPwQAPErsvhciFVyU;->f$1:Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$iis_fs49SxxPwQAPErsvhciFVyU;->f$0:Lcom/android/server/policy/DisplayFoldController;

    iget-object v1, p0, Lcom/android/server/policy/-$$Lambda$DisplayFoldController$iis_fs49SxxPwQAPErsvhciFVyU;->f$1:Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/policy/DisplayFoldController;->lambda$registerFoldStateChangedCallback$3$DisplayFoldController(Lcom/android/server/policy/DisplayFoldController$FoldStateChangedCallbackRecord;)V

    return-void
.end method
