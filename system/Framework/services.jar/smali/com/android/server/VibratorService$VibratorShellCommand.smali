.class final Lcom/android/server/VibratorService$VibratorShellCommand;
.super Landroid/os/ShellCommand;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "VibratorShellCommand"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    }
.end annotation


# instance fields
.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method private constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V
    .registers 3
    .param p2, "token"    # Landroid/os/IBinder;

    .line 2469
    iput-object p1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2470
    iput-object p2, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    .line 2471
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/android/server/VibratorService;
    .param p2, "x1"    # Landroid/os/IBinder;
    .param p3, "x2"    # Lcom/android/server/VibratorService$1;

    .line 2453
    invoke-direct {p0, p1, p2}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;)V

    return-void
.end method

.method private checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z
    .registers 6
    .param p1, "opts"    # Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    .line 2492
    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/VibratorService;->access$4400(Lcom/android/server/VibratorService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "zen_mode"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0

    .line 2494
    .local v0, "zenMode":I
    if-eqz v0, :cond_3e

    iget-boolean v1, p1, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->force:Z

    if-nez v1, :cond_3e

    .line 2495
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1
    :try_end_1b
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_1b} :catch_3f

    .line 2496
    .local v1, "pw":Ljava/io/PrintWriter;
    :try_start_1b
    const-string v2, "Ignoring because device is on DND mode "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2497
    const-class v2, Landroid/provider/Settings$Global;

    const-string v3, "ZEN_MODE_"

    invoke-static {v2, v3, v0}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_1b .. :try_end_2b} :catchall_32

    .line 2499
    const/4 v2, 0x1

    .line 2500
    if-eqz v1, :cond_31

    :try_start_2e
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_31
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_2e .. :try_end_31} :catch_3f

    .line 2499
    :cond_31
    return v2

    .line 2495
    :catchall_32
    move-exception v2

    if-eqz v1, :cond_3d

    :try_start_35
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V
    :try_end_38
    .catchall {:try_start_35 .. :try_end_38} :catchall_39

    goto :goto_3d

    :catchall_39
    move-exception v3

    :try_start_3a
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    .end local p1    # "opts":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :cond_3d
    :goto_3d
    throw v2
    :try_end_3e
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_3a .. :try_end_3e} :catch_3f

    .line 2504
    .end local v0    # "zenMode":I
    .end local v1    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    .restart local p1    # "opts":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :cond_3e
    goto :goto_40

    .line 2502
    :catch_3f
    move-exception v0

    .line 2506
    :goto_40
    const/4 v0, 0x0

    return v0
.end method

.method private createVibrationAttributes(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;
    .registers 5
    .param p1, "commonOptions"    # Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    .line 2664
    iget-boolean v0, p1, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->force:Z

    if-eqz v0, :cond_6

    .line 2665
    const/4 v0, 0x1

    goto :goto_7

    .line 2666
    :cond_6
    const/4 v0, 0x0

    :goto_7
    nop

    .line 2667
    .local v0, "flags":I
    new-instance v1, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v1}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v2, 0x12

    .line 2669
    invoke-virtual {v1, v2}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    .line 2670
    invoke-virtual {v1, v0}, Landroid/os/VibrationAttributes$Builder;->replaceFlags(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v1

    .line 2671
    invoke-virtual {v1}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v1

    .line 2667
    return-object v1
.end method

.method private runCapabilities()I
    .registers 7

    .line 2638
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "runCapabilities"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2639
    :try_start_9
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_88

    .line 2640
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_d
    const-string v3, "Vibrator capabilities:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2641
    iget-object v3, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    const-wide/16 v4, 0x40

    # invokes: Lcom/android/server/VibratorService;->hasCapability(J)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/VibratorService;->access$4600(Lcom/android/server/VibratorService;J)Z

    move-result v3

    if-eqz v3, :cond_21

    .line 2642
    const-string v3, "  Always on effects"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2644
    :cond_21
    iget-object v3, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    const-wide/16 v4, 0x20

    # invokes: Lcom/android/server/VibratorService;->hasCapability(J)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/VibratorService;->access$4600(Lcom/android/server/VibratorService;J)Z

    move-result v3

    if-eqz v3, :cond_30

    .line 2645
    const-string v3, "  Compose effects"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2647
    :cond_30
    iget-object v3, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$4700(Lcom/android/server/VibratorService;)Z

    move-result v3

    if-nez v3, :cond_42

    iget-object v3, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    const-wide/16 v4, 0x4

    # invokes: Lcom/android/server/VibratorService;->hasCapability(J)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/VibratorService;->access$4600(Lcom/android/server/VibratorService;J)Z

    move-result v3

    if-eqz v3, :cond_47

    .line 2648
    :cond_42
    const-string v3, "  Amplitude control"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2650
    :cond_47
    iget-object v3, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    # getter for: Lcom/android/server/VibratorService;->mSupportsExternalControl:Z
    invoke-static {v3}, Lcom/android/server/VibratorService;->access$3400(Lcom/android/server/VibratorService;)Z

    move-result v3

    if-nez v3, :cond_59

    iget-object v3, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    const-wide/16 v4, 0x8

    # invokes: Lcom/android/server/VibratorService;->hasCapability(J)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/VibratorService;->access$4600(Lcom/android/server/VibratorService;J)Z

    move-result v3

    if-eqz v3, :cond_5e

    .line 2651
    :cond_59
    const-string v3, "  External control"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2653
    :cond_5e
    iget-object v3, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    const-wide/16 v4, 0x10

    # invokes: Lcom/android/server/VibratorService;->hasCapability(J)Z
    invoke-static {v3, v4, v5}, Lcom/android/server/VibratorService;->access$4600(Lcom/android/server/VibratorService;J)Z

    move-result v3

    if-eqz v3, :cond_6d

    .line 2654
    const-string v3, "  External amplitude control"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2656
    :cond_6d
    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_72
    .catchall {:try_start_d .. :try_end_72} :catchall_7c

    .line 2657
    const/4 v3, 0x0

    .line 2658
    if-eqz v2, :cond_78

    :try_start_75
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_78
    .catchall {:try_start_75 .. :try_end_78} :catchall_88

    .line 2659
    :cond_78
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2657
    return v3

    .line 2639
    :catchall_7c
    move-exception v3

    if-eqz v2, :cond_87

    :try_start_7f
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_82
    .catchall {:try_start_7f .. :try_end_82} :catchall_83

    goto :goto_87

    :catchall_83
    move-exception v4

    :try_start_84
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    :cond_87
    :goto_87
    throw v3
    :try_end_88
    .catchall {:try_start_84 .. :try_end_88} :catchall_88

    .line 2659
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .restart local p0    # "this":Lcom/android/server/VibratorService$VibratorShellCommand;
    :catchall_88
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2660
    throw v2
.end method

.method private runPrebaked()I
    .registers 16

    .line 2602
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "runPrebaked"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2604
    :try_start_9
    new-instance v2, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 2605
    .local v2, "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    const/4 v3, 0x0

    .line 2608
    .local v3, "shouldFallback":Z
    :goto_10
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    .local v5, "opt":Ljava/lang/String;
    if-eqz v4, :cond_25

    .line 2609
    const-string v4, "-b"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 2610
    const/4 v3, 0x1

    goto :goto_10

    .line 2612
    :cond_21
    invoke-virtual {v2, v5}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_10

    .line 2616
    :cond_25
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v4
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_60

    const/4 v6, 0x0

    if-eqz v4, :cond_31

    .line 2617
    nop

    .line 2633
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2617
    return v6

    .line 2620
    :cond_31
    :try_start_31
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 2622
    .local v4, "id":I
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    .line 2623
    .local v7, "description":Ljava/lang/String;
    if-nez v7, :cond_44

    .line 2624
    const-string v8, "Shell command"

    move-object v7, v8

    move-object v14, v7

    goto :goto_45

    .line 2623
    :cond_44
    move-object v14, v7

    .line 2627
    .end local v7    # "description":Ljava/lang/String;
    .local v14, "description":Ljava/lang/String;
    :goto_45
    invoke-static {v4, v3}, Landroid/os/VibrationEffect;->get(IZ)Landroid/os/VibrationEffect;

    move-result-object v10

    .line 2628
    .local v10, "effect":Landroid/os/VibrationEffect;
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->createVibrationAttributes(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v11

    .line 2629
    .local v11, "attrs":Landroid/os/VibrationAttributes;
    iget-object v7, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string v12, "Shell Command"

    iget-object v13, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    move-object v9, v14

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5b
    .catchall {:try_start_31 .. :try_end_5b} :catchall_60

    .line 2631
    nop

    .line 2633
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2631
    return v6

    .line 2633
    .end local v2    # "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    .end local v3    # "shouldFallback":Z
    .end local v4    # "id":I
    .end local v5    # "opt":Ljava/lang/String;
    .end local v10    # "effect":Landroid/os/VibrationEffect;
    .end local v11    # "attrs":Landroid/os/VibrationAttributes;
    .end local v14    # "description":Ljava/lang/String;
    :catchall_60
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2634
    throw v2
.end method

.method private runVibrate()I
    .registers 16

    .line 2510
    const-wide/32 v0, 0x800000

    const-string/jumbo v2, "runVibrate"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2512
    :try_start_9
    new-instance v2, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 2515
    .local v2, "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :goto_f
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "opt":Ljava/lang/String;
    if-eqz v3, :cond_1a

    .line 2516
    invoke-virtual {v2, v4}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_f

    .line 2519
    :cond_1a
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v3
    :try_end_1e
    .catchall {:try_start_9 .. :try_end_1e} :catchall_53

    const/4 v5, 0x0

    if-eqz v3, :cond_26

    .line 2520
    nop

    .line 2536
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2520
    return v5

    .line 2523
    :cond_26
    :try_start_26
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    .line 2524
    .local v6, "duration":J
    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v3

    .line 2525
    .local v3, "description":Ljava/lang/String;
    if-nez v3, :cond_37

    .line 2526
    const-string v8, "Shell command"

    move-object v3, v8

    .line 2529
    :cond_37
    const/4 v8, -0x1

    .line 2530
    invoke-static {v6, v7, v8}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v11

    .line 2531
    .local v11, "effect":Landroid/os/VibrationEffect;
    invoke-direct {p0, v2}, Lcom/android/server/VibratorService$VibratorShellCommand;->createVibrationAttributes(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v12

    .line 2532
    .local v12, "attrs":Landroid/os/VibrationAttributes;
    iget-object v8, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    const-string v13, "Shell Command"

    iget-object v14, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    move-object v10, v3

    invoke-virtual/range {v8 .. v14}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4e
    .catchall {:try_start_26 .. :try_end_4e} :catchall_53

    .line 2534
    nop

    .line 2536
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2534
    return v5

    .line 2536
    .end local v2    # "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    .end local v3    # "description":Ljava/lang/String;
    .end local v4    # "opt":Ljava/lang/String;
    .end local v6    # "duration":J
    .end local v11    # "effect":Landroid/os/VibrationEffect;
    .end local v12    # "attrs":Landroid/os/VibrationAttributes;
    :catchall_53
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 2537
    throw v2
.end method

.method private runWaveform()I
    .registers 22

    .line 2541
    move-object/from16 v1, p0

    const-wide/32 v2, 0x800000

    const-string/jumbo v0, "runWaveform"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2543
    :try_start_b
    const-string v0, "Shell command"

    .line 2544
    .local v0, "description":Ljava/lang/String;
    const/4 v4, -0x1

    .line 2545
    .local v4, "repeat":I
    const/4 v5, 0x0

    .line 2546
    .local v5, "amplitudesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v6, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;

    const/4 v7, 0x0

    invoke-direct {v6, v1, v7}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;-><init>(Lcom/android/server/VibratorService$VibratorShellCommand;Lcom/android/server/VibratorService$1;)V

    .line 2549
    .local v6, "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    :goto_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v7

    move-object v14, v7

    .local v14, "opt":Ljava/lang/String;
    const/4 v15, 0x0

    if-eqz v7, :cond_73

    .line 2550
    const/4 v7, -0x1

    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/16 v9, 0x5d4

    const/4 v10, 0x2

    const/4 v11, 0x1

    if-eq v8, v9, :cond_44

    const/16 v9, 0x5d7

    if-eq v8, v9, :cond_3b

    const/16 v9, 0x5e5

    if-eq v8, v9, :cond_31

    :cond_30
    goto :goto_4e

    :cond_31
    const-string v8, "-r"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    move v15, v11

    goto :goto_4f

    :cond_3b
    const-string v8, "-d"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    goto :goto_4f

    :cond_44
    const-string v8, "-a"

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_30

    move v15, v10

    goto :goto_4f

    :goto_4e
    move v15, v7

    :goto_4f
    if-eqz v15, :cond_6c

    if-eq v15, v11, :cond_62

    if-eq v15, v10, :cond_59

    .line 2563
    invoke-virtual {v6, v14}, Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;->check(Ljava/lang/String;)V

    goto :goto_72

    .line 2558
    :cond_59
    if-nez v5, :cond_72

    .line 2559
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v7

    goto :goto_72

    .line 2555
    :cond_62
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 2556
    goto :goto_72

    .line 2552
    :cond_6c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    .line 2553
    nop

    .line 2564
    :cond_72
    :goto_72
    goto :goto_15

    .line 2568
    :cond_73
    invoke-direct {v1, v6}, Lcom/android/server/VibratorService$VibratorShellCommand;->checkDoNotDisturb(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Z

    move-result v7
    :try_end_77
    .catchall {:try_start_b .. :try_end_77} :catchall_100

    if-eqz v7, :cond_7e

    .line 2569
    nop

    .line 2597
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2569
    return v15

    .line 2572
    :cond_7e
    :try_start_7e
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v7

    .line 2575
    .local v13, "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :goto_84
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v16, v7

    .local v16, "arg":Ljava/lang/String;
    if-eqz v7, :cond_b0

    .line 2576
    if-eqz v5, :cond_a4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_a4

    .line 2577
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 2579
    :cond_a4
    invoke-static/range {v16 .. v16}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_84

    .line 2584
    :cond_b0
    invoke-virtual {v13}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lcom/android/server/-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM;->INSTANCE:Lcom/android/server/-$$Lambda$ELHKvd8JMVRD8rbALqYPKbDX2mM;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToLong(Ljava/util/function/ToLongFunction;)Ljava/util/stream/LongStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/LongStream;->toArray()[J

    move-result-object v7

    move-object v12, v7

    .line 2585
    .local v12, "timings":[J
    if-nez v5, :cond_c8

    .line 2586
    invoke-static {v12, v4}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v7

    move-object/from16 v17, v7

    .local v7, "effect":Landroid/os/VibrationEffect;
    goto :goto_dd

    .line 2588
    .end local v7    # "effect":Landroid/os/VibrationEffect;
    :cond_c8
    nop

    .line 2589
    invoke-virtual {v5}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v7

    sget-object v8, Lcom/android/server/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;->INSTANCE:Lcom/android/server/-$$Lambda$UV1wDVoVlbcxpr8zevj_aMFtUGw;

    invoke-interface {v7, v8}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v7

    .line 2590
    .local v7, "amplitudes":[I
    invoke-static {v12, v7, v4}, Landroid/os/VibrationEffect;->createWaveform([J[II)Landroid/os/VibrationEffect;

    move-result-object v8

    move-object/from16 v17, v8

    .line 2592
    .end local v7    # "amplitudes":[I
    .local v17, "effect":Landroid/os/VibrationEffect;
    :goto_dd
    invoke-direct {v1, v6}, Lcom/android/server/VibratorService$VibratorShellCommand;->createVibrationAttributes(Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;)Landroid/os/VibrationAttributes;

    move-result-object v11

    .line 2593
    .local v11, "attrs":Landroid/os/VibrationAttributes;
    iget-object v7, v1, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    const-string v18, "Shell Command"

    iget-object v10, v1, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    move-object v9, v0

    move-object/from16 v19, v10

    move-object/from16 v10, v17

    move-object/from16 v20, v12

    .end local v12    # "timings":[J
    .local v20, "timings":[J
    move-object/from16 v12, v18

    move-object/from16 v18, v13

    .end local v13    # "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .local v18, "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    move-object/from16 v13, v19

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/VibratorService;->vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;Landroid/os/VibrationAttributes;Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fb
    .catchall {:try_start_7e .. :try_end_fb} :catchall_100

    .line 2595
    nop

    .line 2597
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2595
    return v15

    .line 2597
    .end local v0    # "description":Ljava/lang/String;
    .end local v4    # "repeat":I
    .end local v5    # "amplitudesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v6    # "commonOptions":Lcom/android/server/VibratorService$VibratorShellCommand$CommonOptions;
    .end local v11    # "attrs":Landroid/os/VibrationAttributes;
    .end local v14    # "opt":Ljava/lang/String;
    .end local v16    # "arg":Ljava/lang/String;
    .end local v17    # "effect":Landroid/os/VibrationEffect;
    .end local v18    # "timingsList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    .end local v20    # "timings":[J
    :catchall_100
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 2598
    throw v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .registers 4
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2475
    const-string/jumbo v0, "vibrate"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2476
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runVibrate()I

    move-result v0

    return v0

    .line 2477
    :cond_e
    const-string/jumbo v0, "waveform"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 2478
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runWaveform()I

    move-result v0

    return v0

    .line 2479
    :cond_1c
    const-string/jumbo v0, "prebaked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 2480
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runPrebaked()I

    move-result v0

    return v0

    .line 2481
    :cond_2a
    const-string v0, "capabilities"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 2482
    invoke-direct {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->runCapabilities()I

    move-result v0

    return v0

    .line 2483
    :cond_37
    const-string v0, "cancel"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    .line 2484
    iget-object v0, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, p0, Lcom/android/server/VibratorService$VibratorShellCommand;->mToken:Landroid/os/IBinder;

    invoke-virtual {v0, v1}, Lcom/android/server/VibratorService;->cancelVibrate(Landroid/os/IBinder;)V

    .line 2485
    const/4 v0, 0x0

    return v0

    .line 2487
    :cond_48
    invoke-virtual {p0, p1}, Lcom/android/server/VibratorService$VibratorShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .registers 5

    .line 2676
    const-string v0, "    will be used to scale amplitude."

    const-string v1, ""

    invoke-virtual {p0}, Lcom/android/server/VibratorService$VibratorShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    .line 2677
    .local v2, "pw":Ljava/io/PrintWriter;
    :try_start_8
    const-string v3, "Vibrator commands:"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2678
    const-string v3, "  help"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2679
    const-string v3, "    Prints this help text."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2680
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2681
    const-string v3, "  vibrate duration [description]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2682
    const-string v3, "    Vibrates for duration milliseconds; ignored when device is on "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2683
    const-string v3, "    DND (Do Not Disturb) mode; touch feedback strength user setting "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2684
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2685
    const-string v3, "  waveform [-d description] [-r index] [-a] duration [amplitude] ..."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2686
    const-string v3, "    Vibrates for durations and amplitudes in list; ignored when "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2687
    const-string v3, "    device is on DND (Do Not Disturb) mode; touch feedback strength "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2688
    const-string v3, "    user setting will be used to scale amplitude."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2689
    const-string v3, "    If -r is provided, the waveform loops back to the specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2690
    const-string v3, "    index (e.g. 0 loops from the beginning)"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2691
    const-string v3, "    If -a is provided, the command accepts duration-amplitude pairs;"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2692
    const-string v3, "    otherwise, it accepts durations only and alternates off/on"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2693
    const-string v3, "    Duration is in milliseconds; amplitude is a scale of 1-255."

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    const-string v3, "  prebaked [-b] effect-id [description]"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2695
    const-string v3, "    Vibrates with prebaked effect; ignored when device is on DND "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2696
    const-string v3, "    (Do Not Disturb) mode; touch feedback strength user setting "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2697
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2698
    const-string v0, "    If -b is provided, the prebaked fallback effect will be played if"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2699
    const-string v0, "    the device doesn\'t support the given effect-id."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2700
    const-string v0, "  capabilities"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2701
    const-string v0, "    Prints capabilities of this device."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2702
    const-string v0, "  cancel"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2703
    const-string v0, "    Cancels any active vibration"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2704
    const-string v0, "Common Options:"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2705
    const-string v0, "  -f - Force. Ignore Do Not Disturb setting."

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2706
    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_96
    .catchall {:try_start_8 .. :try_end_96} :catchall_9c

    .line 2707
    if-eqz v2, :cond_9b

    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 2708
    .end local v2    # "pw":Ljava/io/PrintWriter;
    :cond_9b
    return-void

    .line 2676
    .restart local v2    # "pw":Ljava/io/PrintWriter;
    :catchall_9c
    move-exception v0

    if-eqz v2, :cond_a7

    :try_start_9f
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_a2
    .catchall {:try_start_9f .. :try_end_a2} :catchall_a3

    goto :goto_a7

    :catchall_a3
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a7
    :goto_a7
    throw v0
.end method
