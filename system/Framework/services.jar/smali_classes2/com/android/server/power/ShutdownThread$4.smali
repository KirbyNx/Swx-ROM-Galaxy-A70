.class Lcom/android/server/power/ShutdownThread$4;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownHermes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/power/ShutdownThread;

    .line 946
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 948
    iget-object v0, p0, Lcom/android/server/power/ShutdownThread$4;->this$0:Lcom/android/server/power/ShutdownThread;

    # getter for: Lcom/android/server/power/ShutdownThread;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/power/ShutdownThread;->access$200(Lcom/android/server/power/ShutdownThread;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "sepunion"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/sepunion/SemUnionManager;

    .line 950
    .local v0, "um":Lcom/samsung/android/sepunion/SemUnionManager;
    const-string v1, "Shutdown HermesService is skipped um is null."

    const-string v2, "ShutdownThread"

    if-eqz v0, :cond_33

    .line 951
    :try_start_15
    const-string v3, "HermesService"

    invoke-virtual {v0, v3}, Lcom/samsung/android/sepunion/SemUnionManager;->getSemSystemService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 952
    .local v3, "b":Landroid/os/IBinder;
    if-eqz v3, :cond_2d

    .line 953
    invoke-static {v3}, Lcom/samsung/android/service/HermesService/IHermesService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/service/HermesService/IHermesService;

    move-result-object v1

    .line 954
    .local v1, "hermes":Lcom/samsung/android/service/HermesService/IHermesService;
    if-eqz v1, :cond_27

    .line 955
    invoke-interface {v1}, Lcom/samsung/android/service/HermesService/IHermesService;->hermesTerminateService()I

    goto :goto_2c

    .line 957
    :cond_27
    const-string v4, "Shutdown HermesService is skipped."

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 959
    .end local v1    # "hermes":Lcom/samsung/android/service/HermesService/IHermesService;
    :goto_2c
    goto :goto_30

    .line 960
    :cond_2d
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    .end local v3    # "b":Landroid/os/IBinder;
    :goto_30
    goto :goto_36

    .line 965
    :catch_31
    move-exception v1

    goto :goto_37

    .line 963
    :cond_33
    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_36} :catch_31

    .line 967
    :goto_36
    goto :goto_3c

    .line 966
    .local v1, "ex":Ljava/lang/Exception;
    :goto_37
    const-string v3, "Exception during hermesservice shutdown"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 968
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_3c
    return-void
.end method
