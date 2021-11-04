.class public final Lcom/android/server/usb/UsbMidiDevice;
.super Ljava/lang/Object;
.source "UsbMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;
    }
.end annotation


# static fields
.field private static final BUFFER_SIZE:I = 0x200

.field private static final TAG:Ljava/lang/String; = "UsbMidiDevice"


# instance fields
.field private final mAlsaCard:I

.field private final mAlsaDevice:I

.field private final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field private mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

.field private mFileDescriptors:[Ljava/io/FileDescriptor;

.field private final mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

.field private mInputStreams:[Ljava/io/FileInputStream;

.field private mIsOpen:Z

.field private final mLock:Ljava/lang/Object;

.field private mOutputStreams:[Ljava/io/FileOutputStream;

.field private mPipeFD:I

.field private mPollFDs:[Landroid/system/StructPollfd;

.field private mServer:Landroid/media/midi/MidiDeviceServer;

.field private final mSubdeviceCount:I


# direct methods
.method private constructor <init>(III)V
    .registers 9
    .param p1, "card"    # I
    .param p2, "device"    # I
    .param p3, "subdeviceCount"    # I

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPipeFD:I

    .line 78
    new-instance v0, Lcom/android/server/usb/UsbMidiDevice$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbMidiDevice$1;-><init>(Lcom/android/server/usb/UsbMidiDevice;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 161
    iput p1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    .line 162
    iput p2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    .line 163
    iput p3, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    .line 166
    move v0, p3

    .line 167
    .local v0, "inputPortCount":I
    new-array v1, v0, [Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iput-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    .line 168
    const/4 v1, 0x0

    .local v1, "port":I
    :goto_20
    if-ge v1, v0, :cond_2f

    .line 169
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    new-instance v3, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbMidiDevice;Lcom/android/server/usb/UsbMidiDevice$1;)V

    aput-object v3, v2, v1

    .line 168
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 171
    .end local v1    # "port":I
    :cond_2f
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/usb/UsbMidiDevice;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 47
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 47
    iget-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/usb/UsbMidiDevice;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 47
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->openLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/usb/UsbMidiDevice;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 47
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/usb/UsbMidiDevice;)[Landroid/system/StructPollfd;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 47
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/usb/UsbMidiDevice;)[Ljava/io/FileInputStream;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbMidiDevice;

    .line 47
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    return-object v0
.end method

.method private closeLocked()V
    .registers 5

    .line 321
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    array-length v1, v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_18

    .line 322
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v1, v1, v0

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 323
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/internal/midi/MidiEventScheduler;->close()V

    .line 321
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 325
    .end local v0    # "i":I
    :cond_18
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 327
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1b
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    array-length v3, v1

    if-ge v0, v3, :cond_28

    .line 328
    aget-object v1, v1, v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 330
    .end local v0    # "i":I
    :cond_28
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 332
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2b
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    array-length v3, v1

    if-ge v0, v3, :cond_38

    .line 333
    aget-object v1, v1, v0

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 332
    add-int/lit8 v0, v0, 0x1

    goto :goto_2b

    .line 335
    .end local v0    # "i":I
    :cond_38
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 338
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    invoke-direct {p0, v0}, Lcom/android/server/usb/UsbMidiDevice;->nativeClose([Ljava/io/FileDescriptor;)V

    .line 339
    iput-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 341
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    .line 342
    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/os/Bundle;II)Lcom/android/server/usb/UsbMidiDevice;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "properties"    # Landroid/os/Bundle;
    .param p2, "card"    # I
    .param p3, "device"    # I

    .line 145
    invoke-static {p2, p3}, Lcom/android/server/usb/UsbMidiDevice;->nativeGetSubdeviceCount(II)I

    move-result v0

    .line 146
    .local v0, "subDeviceCount":I
    const/4 v1, 0x0

    const-string v2, "UsbMidiDevice"

    if-gtz v0, :cond_10

    .line 147
    const-string/jumbo v3, "nativeGetSubdeviceCount failed"

    invoke-static {v2, v3}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-object v1

    .line 151
    :cond_10
    new-instance v3, Lcom/android/server/usb/UsbMidiDevice;

    invoke-direct {v3, p2, p3, v0}, Lcom/android/server/usb/UsbMidiDevice;-><init>(III)V

    .line 152
    .local v3, "midiDevice":Lcom/android/server/usb/UsbMidiDevice;
    invoke-direct {v3, p0, p1}, Lcom/android/server/usb/UsbMidiDevice;->register(Landroid/content/Context;Landroid/os/Bundle;)Z

    move-result v4

    if-nez v4, :cond_24

    .line 153
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 154
    const-string v4, "createDeviceServer failed"

    invoke-static {v2, v4}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    return-object v1

    .line 157
    :cond_24
    return-object v3
.end method

.method private native nativeClose([Ljava/io/FileDescriptor;)V
.end method

.method private static native nativeGetSubdeviceCount(II)I
.end method

.method private native nativeOpen(III)[Ljava/io/FileDescriptor;
.end method

.method private openLocked()Z
    .registers 16

    .line 175
    iget v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    iget v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbMidiDevice;->nativeOpen(III)[Ljava/io/FileDescriptor;

    move-result-object v0

    .line 176
    .local v0, "fileDescriptors":[Ljava/io/FileDescriptor;
    if-nez v0, :cond_16

    .line 177
    const-string v1, "UsbMidiDevice"

    const-string/jumbo v2, "nativeOpen failed"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const/4 v1, 0x0

    return v1

    .line 181
    :cond_16
    iput-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mFileDescriptors:[Ljava/io/FileDescriptor;

    .line 182
    array-length v1, v0

    .line 185
    .local v1, "inputStreamCount":I
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 187
    .local v2, "outputStreamCount":I
    new-array v4, v1, [Landroid/system/StructPollfd;

    iput-object v4, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    .line 188
    new-array v4, v1, [Ljava/io/FileInputStream;

    iput-object v4, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    .line 189
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v1, :cond_45

    .line 190
    aget-object v5, v0, v4

    .line 191
    .local v5, "fd":Ljava/io/FileDescriptor;
    new-instance v6, Landroid/system/StructPollfd;

    invoke-direct {v6}, Landroid/system/StructPollfd;-><init>()V

    .line 192
    .local v6, "pollfd":Landroid/system/StructPollfd;
    iput-object v5, v6, Landroid/system/StructPollfd;->fd:Ljava/io/FileDescriptor;

    .line 193
    sget v7, Landroid/system/OsConstants;->POLLIN:I

    int-to-short v7, v7

    iput-short v7, v6, Landroid/system/StructPollfd;->events:S

    .line 194
    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mPollFDs:[Landroid/system/StructPollfd;

    aput-object v6, v7, v4

    .line 195
    iget-object v7, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputStreams:[Ljava/io/FileInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v8, v7, v4

    .line 189
    .end local v5    # "fd":Ljava/io/FileDescriptor;
    .end local v6    # "pollfd":Landroid/system/StructPollfd;
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 198
    .end local v4    # "i":I
    :cond_45
    new-array v4, v2, [Ljava/io/FileOutputStream;

    iput-object v4, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    .line 199
    new-array v4, v2, [Lcom/android/internal/midi/MidiEventScheduler;

    iput-object v4, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    .line 200
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_4e
    if-ge v4, v2, :cond_72

    .line 201
    iget-object v5, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    aget-object v7, v0, v4

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    aput-object v6, v5, v4

    .line 203
    new-instance v5, Lcom/android/internal/midi/MidiEventScheduler;

    invoke-direct {v5}, Lcom/android/internal/midi/MidiEventScheduler;-><init>()V

    .line 204
    .local v5, "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aput-object v5, v6, v4

    .line 205
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    aget-object v6, v6, v4

    invoke-virtual {v5}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    .line 200
    .end local v5    # "scheduler":Lcom/android/internal/midi/MidiEventScheduler;
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 208
    .end local v4    # "i":I
    :cond_72
    iget-object v4, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v4}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v4

    .line 211
    .local v4, "outputReceivers":[Landroid/media/midi/MidiReceiver;
    new-instance v5, Lcom/android/server/usb/UsbMidiDevice$2;

    const-string v6, "UsbMidiDevice input thread"

    invoke-direct {v5, p0, v6, v4}, Lcom/android/server/usb/UsbMidiDevice$2;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;[Landroid/media/midi/MidiReceiver;)V

    .line 253
    invoke-virtual {v5}, Lcom/android/server/usb/UsbMidiDevice$2;->start()V

    .line 256
    const/4 v5, 0x0

    .local v5, "port":I
    :goto_83
    if-ge v5, v2, :cond_ae

    .line 257
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mEventSchedulers:[Lcom/android/internal/midi/MidiEventScheduler;

    aget-object v12, v6, v5

    .line 258
    .local v12, "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiDevice;->mOutputStreams:[Ljava/io/FileOutputStream;

    aget-object v13, v6, v5

    .line 259
    .local v13, "outputStreamF":Ljava/io/FileOutputStream;
    move v11, v5

    .line 261
    .local v11, "portF":I
    new-instance v14, Lcom/android/server/usb/UsbMidiDevice$3;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UsbMidiDevice output thread "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v6, v14

    move-object v7, p0

    move-object v9, v12

    move-object v10, v13

    invoke-direct/range {v6 .. v11}, Lcom/android/server/usb/UsbMidiDevice$3;-><init>(Lcom/android/server/usb/UsbMidiDevice;Ljava/lang/String;Lcom/android/internal/midi/MidiEventScheduler;Ljava/io/FileOutputStream;I)V

    .line 284
    invoke-virtual {v14}, Lcom/android/server/usb/UsbMidiDevice$3;->start()V

    .line 256
    .end local v11    # "portF":I
    .end local v12    # "eventSchedulerF":Lcom/android/internal/midi/MidiEventScheduler;
    .end local v13    # "outputStreamF":Ljava/io/FileOutputStream;
    add-int/lit8 v5, v5, 0x1

    goto :goto_83

    .line 287
    .end local v5    # "port":I
    :cond_ae
    iput-boolean v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    .line 288
    return v3
.end method

.method private register(Landroid/content/Context;Landroid/os/Bundle;)Z
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Landroid/os/Bundle;

    .line 292
    const-string/jumbo v0, "midi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/midi/MidiManager;

    .line 293
    .local v0, "midiManager":Landroid/media/midi/MidiManager;
    const/4 v9, 0x0

    if-nez v0, :cond_14

    .line 294
    const-string v1, "UsbMidiDevice"

    const-string v2, "No MidiManager in UsbMidiDevice.create()"

    invoke-static {v1, v2}, Landroid/util/sysfwutil/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    return v9

    .line 298
    :cond_14
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mInputPortReceivers:[Lcom/android/server/usb/UsbMidiDevice$InputReceiverProxy;

    iget v3, p0, Lcom/android/server/usb/UsbMidiDevice;->mSubdeviceCount:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/server/usb/UsbMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    move-object v1, v0

    move-object v6, p2

    invoke-virtual/range {v1 .. v8}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;ILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    .line 300
    if-nez v1, :cond_28

    .line 301
    return v9

    .line 304
    :cond_28
    const/4 v1, 0x1

    return v1
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 309
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 310
    :try_start_3
    iget-boolean v1, p0, Lcom/android/server/usb/UsbMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_a

    .line 311
    invoke-direct {p0}, Lcom/android/server/usb/UsbMidiDevice;->closeLocked()V

    .line 313
    :cond_a
    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_13

    .line 315
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz v0, :cond_12

    .line 316
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 318
    :cond_12
    return-void

    .line 313
    :catchall_13
    move-exception v1

    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    throw v1
.end method

.method public dump(Ljava/lang/String;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .registers 12
    .param p1, "deviceAddr"    # Ljava/lang/String;
    .param p2, "dump"    # Lcom/android/internal/util/dump/DualDumpOutputStream;
    .param p3, "idName"    # Ljava/lang/String;
    .param p4, "id"    # J

    .line 349
    invoke-virtual {p2, p3, p4, p5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v0

    .line 351
    .local v0, "token":J
    const-string v2, "device_address"

    const-wide v3, 0x10900000003L

    invoke-virtual {p2, v2, v3, v4, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 352
    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaCard:I

    const-string v3, "card"

    const-wide v4, 0x10500000001L

    invoke-virtual {p2, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 353
    iget v2, p0, Lcom/android/server/usb/UsbMidiDevice;->mAlsaDevice:I

    const-string v3, "device"

    const-wide v4, 0x10500000002L

    invoke-virtual {p2, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 355
    invoke-virtual {p2, v0, v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 356
    return-void
.end method
