.class Lcom/android/server/usb/UsbMidiDevice$2;
.super Ljava/lang/Thread;
.source "UsbMidiDevice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMidiDevice;

.field final synthetic val$outputReceivers:[Landroid/media/midi/MidiReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V
    .registers 4
    .param p1, "this$0"    # Lcom/android/server/usb/UsbMidiDevice;
    .param p2, "arg0"    # Ljava/lang/String;

    .line 211
    iput-object p1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    iput-object p3, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 214
    const/16 v0, 0x200

    new-array v0, v0, [B

    .line 218
    .local v0, "buffer":[B
    :goto_4
    :try_start_4
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    .line 219
    .local v5, "timestamp":J
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;
    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_f} :catch_81
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_f} :catch_77

    .line 220
    :try_start_f
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$100(Lcom/android/server/usb/UsbMidiDevice;)Z

    move-result v1

    if-nez v1, :cond_1a

    monitor-exit v7

    goto/16 :goto_8a

    .line 223
    :cond_1a
    const/4 v1, 0x0

    move v8, v1

    .local v8, "index":I
    :goto_1c
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;
    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    array-length v1, v1

    if-ge v8, v1, :cond_67

    .line 224
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;
    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    aget-object v1, v1, v8

    move-object v9, v1

    .line 225
    .local v9, "pfd":Landroid/system/StructPollfd;
    iget-short v1, v9, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLERR:I

    sget v3, Landroid/system/OsConstants;->POLLHUP:I

    or-int/2addr v2, v3

    and-int/2addr v1, v2

    if-eqz v1, :cond_39

    .line 227
    goto :goto_67

    .line 228
    :cond_39
    iget-short v1, v9, Landroid/system/StructPollfd;->revents:S

    sget v2, Landroid/system/OsConstants;->POLLIN:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_64

    .line 230
    const/4 v1, 0x0

    iput-short v1, v9, Landroid/system/StructPollfd;->revents:S

    .line 232
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    if-ne v8, v1, :cond_4f

    .line 234
    goto :goto_67

    .line 237
    :cond_4f
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;
    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;

    move-result-object v1

    aget-object v1, v1, v8

    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 238
    .local v4, "count":I
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->val$outputReceivers:[Landroid/media/midi/MidiReceiver;

    aget-object v1, v1, v8

    const/4 v3, 0x0

    move-object v2, v0

    invoke-virtual/range {v1 .. v6}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 223
    .end local v4    # "count":I
    .end local v9    # "pfd":Landroid/system/StructPollfd;
    :cond_64
    add-int/lit8 v8, v8, 0x1

    goto :goto_1c

    .line 241
    .end local v8    # "index":I
    :cond_67
    :goto_67
    monitor-exit v7
    :try_end_68
    .catchall {:try_start_f .. :try_end_68} :catchall_74

    .line 244
    :try_start_68
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice$2;->this$0:Lcom/android/server/usb/UsbMidiDevice;

    # getter for: Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;
    invoke-static {v1}, Lcom/android/server/usb/UsbMidiDevice;->access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/system/Os;->poll([Landroid/system/StructPollfd;I)I
    :try_end_72
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_72} :catch_81
    .catch Landroid/system/ErrnoException; {:try_start_68 .. :try_end_72} :catch_77

    .line 245
    nop

    .end local v5    # "timestamp":J
    goto :goto_4

    .line 241
    .restart local v5    # "timestamp":J
    :catchall_74
    move-exception v1

    :try_start_75
    monitor-exit v7
    :try_end_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_74

    .end local v0    # "buffer":[B
    .end local p0    # "this":Lcom/android/server/usb/UsbMidiDevice$2;
    :try_start_76
    throw v1
    :try_end_77
    .catch Ljava/io/IOException; {:try_start_76 .. :try_end_77} :catch_81
    .catch Landroid/system/ErrnoException; {:try_start_76 .. :try_end_77} :catch_77

    .line 248
    .end local v5    # "timestamp":J
    .restart local v0    # "buffer":[B
    .restart local p0    # "this":Lcom/android/server/usb/UsbMidiDevice$2;
    :catch_77
    move-exception v1

    .line 249
    .local v1, "e":Landroid/system/ErrnoException;
    const-string v2, "UsbMidiDevice"

    const-string/jumbo v3, "reader thread exiting"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8b

    .line 246
    .end local v1    # "e":Landroid/system/ErrnoException;
    :catch_81
    move-exception v1

    .line 247
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "UsbMidiDevice"

    const-string/jumbo v3, "reader thread exiting"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    .end local v1    # "e":Ljava/io/IOException;
    :goto_8a
    nop

    .line 251
    :goto_8b
    const-string v1, "UsbMidiDevice"

    const-string/jumbo v2, "input thread exit"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void
.end method
