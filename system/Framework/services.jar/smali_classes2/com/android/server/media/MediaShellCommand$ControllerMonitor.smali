.class Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
.super Ljava/lang/Object;
.source "MediaShellCommand.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ControllerMonitor"
.end annotation


# instance fields
.field private final mController:Landroid/media/session/MediaController;

.field private final mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

.field final synthetic this$0:Lcom/android/server/media/MediaShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaShellCommand;Landroid/media/session/MediaController;)V
    .registers 4
    .param p2, "controller"    # Landroid/media/session/MediaController;

    .line 246
    iput-object p1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    iput-object p2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    .line 248
    new-instance v0, Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-direct {v0, p1}, Lcom/android/server/media/MediaShellCommand$ControllerCallback;-><init>(Lcom/android/server/media/MediaShellCommand;)V

    iput-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    .line 249
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Lcom/android/server/media/MediaShellCommand$ControllerCallback;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    .line 242
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;)Landroid/media/session/MediaController;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/media/MediaShellCommand$ControllerMonitor;

    .line 242
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method private dispatchKeyCode(I)V
    .registers 22
    .param p1, "keyCode"    # I

    .line 318
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v15

    .line 319
    .local v15, "now":J
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, -0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x101

    move-object v2, v0

    move-wide v3, v15

    move-wide v5, v15

    move/from16 v8, p1

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    move-object v14, v0

    .line 321
    .local v14, "down":Landroid/view/KeyEvent;
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v7, 0x1

    const/16 v17, 0x101

    move-object v2, v0

    move-wide/from16 v18, v15

    move-object v15, v14

    .end local v14    # "down":Landroid/view/KeyEvent;
    .local v15, "down":Landroid/view/KeyEvent;
    .local v18, "now":J
    move/from16 v14, v17

    invoke-direct/range {v2 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 324
    .local v2, "up":Landroid/view/KeyEvent;
    :try_start_27
    iget-object v0, v1, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v0, v15}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z

    .line 325
    iget-object v0, v1, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v0, v2}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_31
    .catch Ljava/lang/RuntimeException; {:try_start_27 .. :try_end_31} :catch_34

    .line 328
    move/from16 v5, p1

    goto :goto_51

    .line 326
    :catch_34
    move-exception v0

    .line 327
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v3, v1, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    # getter for: Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;
    invoke-static {v3}, Lcom/android/server/media/MediaShellCommand;->access$300(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to dispatch "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_51
    return-void
.end method


# virtual methods
.method printUsageMessage()V
    .registers 4

    .line 253
    :try_start_0
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    # getter for: Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->access$000(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "V2Monitoring session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    invoke-virtual {v2}, Landroid/media/session/MediaController;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "...  available commands: play, pause, next, previous"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_25
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_25} :catch_26

    .line 257
    goto :goto_32

    .line 255
    :catch_26
    move-exception v0

    .line 256
    .local v0, "e":Ljava/lang/RuntimeException;
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    # getter for: Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;
    invoke-static {v1}, Lcom/android/server/media/MediaShellCommand;->access$000(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v1

    const-string v2, "Error trying to monitor session!"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 258
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :goto_32
    iget-object v0, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    # getter for: Lcom/android/server/media/MediaShellCommand;->mWriter:Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/media/MediaShellCommand;->access$000(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "(q)uit: finish monitoring"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method run()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 262
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 263
    new-instance v0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;

    const-string v1, "MediaCb"

    invoke-direct {v0, p0, v1}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor$1;-><init>(Lcom/android/server/media/MediaShellCommand$ControllerMonitor;Ljava/lang/String;)V

    .line 273
    .local v0, "cbThread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 276
    :try_start_d
    new-instance v1, Ljava/io/InputStreamReader;

    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 277
    .local v1, "converter":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 280
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_19
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_a5

    .line 281
    const/4 v3, 0x1

    .line 282
    .local v3, "addNewline":Z
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-gtz v5, :cond_29

    .line 283
    const/4 v3, 0x0

    goto :goto_92

    .line 284
    :cond_29
    const-string/jumbo v5, "q"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a5

    const-string/jumbo v5, "quit"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3c

    .line 285
    goto :goto_a5

    .line 286
    :cond_3c
    const-string/jumbo v5, "play"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4b

    .line 287
    const/16 v5, 0x7e

    invoke-direct {p0, v5}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_92

    .line 288
    :cond_4b
    const-string/jumbo v5, "pause"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5a

    .line 289
    const/16 v5, 0x7f

    invoke-direct {p0, v5}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_92

    .line 290
    :cond_5a
    const-string/jumbo v5, "next"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 291
    const/16 v5, 0x57

    invoke-direct {p0, v5}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_92

    .line 292
    :cond_69
    const-string/jumbo v5, "previous"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_78

    .line 293
    const/16 v5, 0x58

    invoke-direct {p0, v5}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->dispatchKeyCode(I)V

    goto :goto_92

    .line 295
    :cond_78
    iget-object v5, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->this$0:Lcom/android/server/media/MediaShellCommand;

    # getter for: Lcom/android/server/media/MediaShellCommand;->mErrorWriter:Ljava/io/PrintWriter;
    invoke-static {v5}, Lcom/android/server/media/MediaShellCommand;->access$300(Lcom/android/server/media/MediaShellCommand;)Ljava/io/PrintWriter;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid command: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 298
    :goto_92
    monitor-enter p0
    :try_end_93
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_93} :catch_b6
    .catchall {:try_start_d .. :try_end_93} :catchall_b4

    .line 299
    if-eqz v3, :cond_9c

    .line 300
    :try_start_95
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 302
    :cond_9c
    invoke-virtual {p0}, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->printUsageMessage()V

    .line 303
    monitor-exit p0

    .line 304
    .end local v3    # "addNewline":Z
    goto/16 :goto_19

    .line 303
    .restart local v3    # "addNewline":Z
    :catchall_a2
    move-exception v5

    monitor-exit p0
    :try_end_a4
    .catchall {:try_start_95 .. :try_end_a4} :catchall_a2

    .end local v0    # "cbThread":Landroid/os/HandlerThread;
    .end local p0    # "this":Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
    :try_start_a4
    throw v5
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a4 .. :try_end_a5} :catch_b6
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_b4

    .line 308
    .end local v1    # "converter":Ljava/io/InputStreamReader;
    .end local v2    # "in":Ljava/io/BufferedReader;
    .end local v3    # "addNewline":Z
    .end local v4    # "line":Ljava/lang/String;
    .restart local v0    # "cbThread":Landroid/os/HandlerThread;
    .restart local p0    # "this":Lcom/android/server/media/MediaShellCommand$ControllerMonitor;
    :cond_a5
    :goto_a5
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 310
    :try_start_ac
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_b3
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_b3} :catch_c9

    goto :goto_c8

    .line 308
    :catchall_b4
    move-exception v1

    goto :goto_cc

    .line 305
    :catch_b6
    move-exception v1

    .line 306
    .local v1, "e":Ljava/io/IOException;
    :try_start_b7
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_ba
    .catchall {:try_start_b7 .. :try_end_ba} :catchall_b4

    .line 308
    .end local v1    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    .line 310
    :try_start_c1
    iget-object v1, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_c8
    .catch Ljava/lang/Exception; {:try_start_c1 .. :try_end_c8} :catch_c9

    .line 313
    :goto_c8
    goto :goto_cb

    .line 311
    :catch_c9
    move-exception v1

    .line 314
    nop

    .line 315
    :goto_cb
    return-void

    .line 308
    :goto_cc
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    .line 310
    :try_start_d3
    iget-object v2, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mController:Landroid/media/session/MediaController;

    iget-object v3, p0, Lcom/android/server/media/MediaShellCommand$ControllerMonitor;->mControllerCallback:Lcom/android/server/media/MediaShellCommand$ControllerCallback;

    invoke-virtual {v2, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V
    :try_end_da
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_da} :catch_db

    .line 313
    goto :goto_dc

    .line 311
    :catch_db
    move-exception v2

    .line 314
    :goto_dc
    throw v1
.end method
