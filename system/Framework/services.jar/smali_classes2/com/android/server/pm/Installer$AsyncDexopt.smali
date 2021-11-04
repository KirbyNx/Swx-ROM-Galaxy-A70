.class Lcom/android/server/pm/Installer$AsyncDexopt;
.super Ljava/lang/Object;
.source "Installer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Installer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDexopt"
.end annotation


# static fields
.field public static final DEXOPT_STATE_FAIL:I = -0x1

.field public static final DEXOPT_STATE_SUCCESS:I = 0x0

.field public static final MSG_INDEX_HASHCODE:I = 0x1

.field public static final MSG_INDEX_RESULT:I = 0x0

.field public static final MSG_INDEX_TASK_SIZE:I = 0x2


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/Installer;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;)V
    .registers 2

    .line 392
    iput-object p1, p0, Lcom/android/server/pm/Installer$AsyncDexopt;->this$0:Lcom/android/server/pm/Installer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public processResult(II)V
    .registers 5
    .param p1, "hashcode"    # I
    .param p2, "result"    # I

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dexopt result("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 396
    if-nez p2, :cond_18

    const-string/jumbo v1, "success"

    goto :goto_1a

    :cond_18
    const-string v1, "fail"

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 395
    const-string v1, "Installer"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-void
.end method
