.class public final synthetic Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$LazyFileManagerHelper$LazyThread$tRi6w_42sbged0zsrtk6gliT1TY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$LazyFileManagerHelper$LazyThread$tRi6w_42sbged0zsrtk6gliT1TY;->f$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PackageSettingsManager$LazyFileManagerHelper$LazyThread$tRi6w_42sbged0zsrtk6gliT1TY;->f$0:Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/PackageSettingsManager$LazyFileManagerHelper$LazyThread;->lambda$run$0$PackageSettingsManager$LazyFileManagerHelper$LazyThread(Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-void
.end method
