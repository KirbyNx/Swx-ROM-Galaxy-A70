.class public final Lcom/android/server/am/Dropcachemgr;
.super Ljava/lang/Object;
.source "Dropcachemgr.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 29
    const-class v0, Lcom/android/server/am/Dropcachemgr;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/Dropcachemgr;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doDropcache(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "args"    # [Ljava/lang/String;

    .line 33
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_23

    aget-object v0, p1, v1

    const-string/jumbo v1, "triggering"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 34
    const-string/jumbo v0, "sys.drop_caches"

    const-string v1, "3"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    const-string v0, "Drop cache is done"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/android/server/am/Dropcachemgr;->TAG:Ljava/lang/String;

    const-string v1, "Drop cache is done."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    :cond_23
    return-void
.end method
