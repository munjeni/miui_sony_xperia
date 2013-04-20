.class Landroid/media/MediaScanner$MyMediaScannerClient;
.super Ljava/lang/Object;
.source "MediaScanner.java"

# interfaces
.implements Landroid/media/MediaScannerClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyMediaScannerClient"
.end annotation


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumArtist:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mCompilation:I

.field private mComposer:Ljava/lang/String;

.field private mDuration:I

.field private mFileSize:J

.field private mFileType:I

.field private mGenre:Ljava/lang/String;

.field private mHeight:I

.field private mIsDrm:Z

.field private mLastModified:J

.field private mMimeType:Ljava/lang/String;

.field private mNoMedia:Z

.field private mPath:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mTrack:I

.field private mWidth:I

.field private mWriter:Ljava/lang/String;

.field private mYear:I

.field final synthetic this$0:Landroid/media/MediaScanner;


# direct methods
.method private constructor <init>(Landroid/media/MediaScanner;)V
    .locals 0
    .parameter

    .prologue
    .line 417
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/media/MediaScanner;Landroid/media/MediaScanner$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 417
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;-><init>(Landroid/media/MediaScanner;)V

    return-void
.end method

.method private doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .parameter "path"
    .parameter "filename"

    .prologue
    const/4 v2, 0x0

    .line 927
    sget-char v3, Ljava/io/File;->separatorChar:C

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    add-int/lit8 v1, v3, 0x1

    .line 928
    .local v1, pathFilenameStart:I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 929
    .local v0, filenameLength:I
    invoke-virtual {p1, v1, p2, v2, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v1, v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v3, v4, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;
    .locals 27
    .parameter "entry"
    .parameter "ringtones"
    .parameter "notifications"
    .parameter "alarms"
    .parameter "music"
    .parameter "podcasts"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->CHANGE_CODE:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    if-nez v23, :cond_1

    .line 764
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :cond_1
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaScanner$MyMediaScannerClient;->toValues()Landroid/content/ContentValues;

    move-result-object v22

    .local v22, values:Landroid/content/ContentValues;
    const-string v23, "title"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .local v21, title:Ljava/lang/String;
    if-eqz v21, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 770
    :cond_2
    const-string v23, "_data"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->getFileTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    const-string v23, "title"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 773
    :cond_3
    const-string v23, "album"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .local v4, album:Ljava/lang/String;
    const-string v23, "<unknown>"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_5

    const-string v23, "_data"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/16 v23, 0x2f

    move/from16 v0, v23

    invoke-virtual {v4, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v11

    .local v11, lastSlash:I
    if-ltz v11, :cond_5

    const/4 v14, 0x0

    .local v14, previousSlash:I
    :goto_0
    const/16 v23, 0x2f

    add-int/lit8 v24, v14, 0x1

    move/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .local v9, idx:I
    if-ltz v9, :cond_4

    if-lt v9, v11, :cond_10

    :cond_4
    if-eqz v14, :cond_5

    add-int/lit8 v23, v14, 0x1

    move/from16 v0, v23

    invoke-virtual {v4, v0, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v23, "album"

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .end local v9           #idx:I
    .end local v11           #lastSlash:I
    .end local v14           #previousSlash:I
    :cond_5
    move-object/from16 v0, p1

    iget-wide v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    move-wide/from16 v16, v0

    .local v16, rowId:J
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v23

    if-eqz v23, :cond_11

    const-wide/16 v23, 0x0

    cmp-long v23, v16, v23

    if-eqz v23, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)I

    move-result v23

    if-eqz v23, :cond_11

    .line 799
    :cond_6
    const-string v23, "is_ringtone"

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v23, "is_notification"

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v23, "is_alarm"

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v23, "is_music"

    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v23, "is_podcast"

    invoke-static/range {p6 .. p6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 856
    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v18

    .local v18, tableUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mMediaInserter:Landroid/media/MediaInserter;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1300(Landroid/media/MediaScanner;)Landroid/media/MediaInserter;

    move-result-object v10

    .local v10, inserter:Landroid/media/MediaInserter;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v23, v0

    if-nez v23, :cond_8

    .line 859
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v23

    if-eqz v23, :cond_15

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mVideoUri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1400(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v18

    :cond_8
    :goto_2
    const/4 v15, 0x0

    .local v15, result:Landroid/net/Uri;
    const-wide/16 v23, 0x0

    cmp-long v23, v16, v23

    if-nez v23, :cond_18

    .line 869
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)I

    move-result v23

    if-eqz v23, :cond_9

    const-string v23, "media_scanner_new_object_id"

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/MediaScanner;->mMtpObjectHandle:I
    invoke-static/range {v24 .. v24}, Landroid/media/MediaScanner;->access$1100(Landroid/media/MediaScanner;)I

    move-result v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 872
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mFilesUri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1200(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v23

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_b

    move-object/from16 v0, p1

    iget v8, v0, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    .local v8, format:I
    if-nez v8, :cond_a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static/range {v23 .. v24}, Landroid/media/MediaFile;->getFormatCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 877
    :cond_a
    const-string v23, "format"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .end local v8           #format:I
    :cond_b
    if-eqz v10, :cond_c

    move-object/from16 v0, p1

    iget v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mFormat:I

    move/from16 v23, v0

    const/16 v24, 0x3001

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_17

    .line 885
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Landroid/content/IContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v15

    :goto_3
    if-eqz v15, :cond_d

    invoke-static {v15}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    move-object/from16 v2, p1

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mRowId:J

    :cond_d
    :goto_4
    if-eqz p3, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v23

    if-eqz v23, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1900(Landroid/media/MediaScanner;)Z

    move-result v23

    if-nez v23, :cond_19

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_e

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultNotificationFilename:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/media/MediaScanner;->access$2000(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    :cond_e
    const-string v23, "notification_sound"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 907
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "sms_delivered_sound"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    const-string v23, "sms_received_sound"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultNotificationSet:Z
    invoke-static/range {v23 .. v24}, Landroid/media/MediaScanner;->access$1902(Landroid/media/MediaScanner;Z)Z

    :cond_f
    :goto_5
    return-object v15

    .end local v10           #inserter:Landroid/media/MediaInserter;
    .end local v15           #result:Landroid/net/Uri;
    .end local v16           #rowId:J
    .end local v18           #tableUri:Landroid/net/Uri;
    .restart local v9       #idx:I
    .restart local v11       #lastSlash:I
    .restart local v14       #previousSlash:I
    :cond_10
    move v14, v9

    goto/16 :goto_0

    .end local v9           #idx:I
    .end local v11           #lastSlash:I
    .end local v14           #previousSlash:I
    .restart local v16       #rowId:J
    :cond_11
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v23, v0

    const/16 v24, 0x1f

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    move/from16 v23, v0

    if-nez v23, :cond_7

    const/4 v6, 0x0

    .local v6, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v7, Landroid/media/ExifInterface;

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v7, v0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v6           #exif:Landroid/media/ExifInterface;
    .local v7, exif:Landroid/media/ExifInterface;
    move-object v6, v7

    .end local v7           #exif:Landroid/media/ExifInterface;
    .restart local v6       #exif:Landroid/media/ExifInterface;
    :goto_6
    if-eqz v6, :cond_7

    const/16 v23, 0x2

    move/from16 v0, v23

    new-array v12, v0, [F

    .local v12, latlng:[F
    invoke-virtual {v6, v12}, Landroid/media/ExifInterface;->getLatLong([F)Z

    move-result v23

    if-eqz v23, :cond_12

    const-string v23, "latitude"

    const/16 v24, 0x0

    aget v24, v12, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    const-string v23, "longitude"

    const/16 v24, 0x1

    aget v24, v12, v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Float;)V

    :cond_12
    invoke-virtual {v6}, Landroid/media/ExifInterface;->getGpsDateTime()J

    move-result-wide v19

    .local v19, time:J
    const-wide/16 v23, -0x1

    cmp-long v23, v19, v23

    if-eqz v23, :cond_14

    const-string v23, "datetaken"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 832
    :cond_13
    :goto_7
    const-string v23, "Orientation"

    const/16 v24, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v6, v0, v1}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v13

    .local v13, orientation:I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-eq v13, v0, :cond_7

    packed-switch v13, :pswitch_data_0

    :pswitch_0
    const/4 v5, 0x0

    .local v5, degree:I
    :goto_8
    const-string v23, "orientation"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_1

    .end local v5           #degree:I
    .end local v13           #orientation:I
    :cond_14
    invoke-virtual {v6}, Landroid/media/ExifInterface;->getDateTime()J

    move-result-wide v19

    .line 827
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    move-wide/from16 v23, v0

    const-wide/16 v25, 0x3e8

    mul-long v23, v23, v25

    sub-long v23, v23, v19

    invoke-static/range {v23 .. v24}, Ljava/lang/Math;->abs(J)J

    move-result-wide v23

    const-wide/32 v25, 0x5265c00

    cmp-long v23, v23, v25

    if-ltz v23, :cond_13

    const-string v23, "datetaken"

    invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    invoke-virtual/range {v22 .. v24}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto :goto_7

    .restart local v13       #orientation:I
    :pswitch_1
    const/16 v5, 0x5a

    .restart local v5       #degree:I
    goto :goto_8

    .end local v5           #degree:I
    :pswitch_2
    const/16 v5, 0xb4

    .restart local v5       #degree:I
    goto :goto_8

    .end local v5           #degree:I
    :pswitch_3
    const/16 v5, 0x10e

    .restart local v5       #degree:I
    goto :goto_8

    .end local v5           #degree:I
    .end local v6           #exif:Landroid/media/ExifInterface;
    .end local v12           #latlng:[F
    .end local v13           #orientation:I
    .end local v19           #time:J
    .restart local v10       #inserter:Landroid/media/MediaInserter;
    .restart local v18       #tableUri:Landroid/net/Uri;
    :cond_15
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v23

    if-eqz v23, :cond_16

    .line 862
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mImagesUri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1500(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v18

    goto/16 :goto_2

    .line 863
    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mAudioUri:Landroid/net/Uri;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1600(Landroid/media/MediaScanner;)Landroid/net/Uri;

    move-result-object v18

    goto/16 :goto_2

    .restart local v15       #result:Landroid/net/Uri;
    :cond_17
    move-object/from16 v0, v18

    move-object/from16 v1, v22

    invoke-virtual {v10, v0, v1}, Landroid/media/MediaInserter;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)V

    goto/16 :goto_3

    .line 896
    :cond_18
    move-object/from16 v0, v18

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v15

    const-string v23, "_data"

    invoke-virtual/range {v22 .. v23}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mMediaProvider:Landroid/content/IContentProvider;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1700(Landroid/media/MediaScanner;)Landroid/content/IContentProvider;

    move-result-object v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-interface {v0, v15, v1, v2, v3}, Landroid/content/IContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_4

    .line 909
    :cond_19
    if-eqz p2, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v23

    if-eqz v23, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$2100(Landroid/media/MediaScanner;)Z

    move-result v23

    if-nez v23, :cond_1b

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1a

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultRingtoneFilename:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/media/MediaScanner;->access$2200(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    :cond_1a
    const-string v23, "ringtone"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 913
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultRingtoneSet:Z
    invoke-static/range {v23 .. v24}, Landroid/media/MediaScanner;->access$2102(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .line 915
    :cond_1b
    if-eqz p4, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mWasEmptyPriorToScan:Z
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$1800(Landroid/media/MediaScanner;)Z

    move-result v23

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$2300(Landroid/media/MediaScanner;)Z

    move-result v23

    if-nez v23, :cond_f

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_1c

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v24, v0

    #getter for: Landroid/media/MediaScanner;->mDefaultAlarmAlertFilename:Ljava/lang/String;
    invoke-static/range {v24 .. v24}, Landroid/media/MediaScanner;->access$2400(Landroid/media/MediaScanner;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->doesPathHaveFilename(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v23

    if-eqz v23, :cond_f

    .line 918
    :cond_1c
    const-string v23, "alarm_alert"

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/media/MediaScanner$FileCacheEntry;->mPath:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->setSettingIfNotSet(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    #setter for: Landroid/media/MediaScanner;->mDefaultAlarmSet:Z
    invoke-static/range {v23 .. v24}, Landroid/media/MediaScanner;->access$2302(Landroid/media/MediaScanner;Z)Z

    goto/16 :goto_5

    .end local v10           #inserter:Landroid/media/MediaInserter;
    .end local v15           #result:Landroid/net/Uri;
    .end local v18           #tableUri:Landroid/net/Uri;
    .restart local v6       #exif:Landroid/media/ExifInterface;
    :catch_0
    move-exception v23

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getFileTypeFromDrm(Ljava/lang/String;)I
    .locals 5
    .parameter "path"

    .prologue
    .line 946
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v2}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 947
    const/4 v1, 0x0

    .line 963
    :cond_0
    :goto_0
    return v1

    .line 950
    :cond_1
    const/4 v1, 0x0

    .line 952
    .local v1, resultFileType:I
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    if-nez v2, :cond_2

    .line 953
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    new-instance v3, Landroid/drm/DrmManagerClient;

    iget-object v4, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    #setter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2, v3}, Landroid/media/MediaScanner;->access$2602(Landroid/media/MediaScanner;Landroid/drm/DrmManagerClient;)Landroid/drm/DrmManagerClient;

    .line 956
    :cond_2
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 957
    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mDrmManagerClient:Landroid/drm/DrmManagerClient;
    invoke-static {v2}, Landroid/media/MediaScanner;->access$2600(Landroid/media/MediaScanner;)Landroid/drm/DrmManagerClient;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/drm/DrmManagerClient;->getOriginalMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 958
    .local v0, drmMimetype:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 959
    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 960
    invoke-static {v0}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method private parseSubstring(Ljava/lang/String;II)I
    .locals 8
    .parameter "s"
    .parameter "start"
    .parameter "defaultValue"

    .prologue
    const/16 v7, 0x39

    const/16 v6, 0x30

    .line 580
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 581
    .local v1, length:I
    if-ne p2, v1, :cond_0

    .line 594
    .end local p3
    :goto_0
    return p3

    .line 583
    .restart local p3
    :cond_0
    add-int/lit8 v3, p2, 0x1

    .end local p2
    .local v3, start:I
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 585
    .local v0, ch:C
    if-lt v0, v6, :cond_1

    if-le v0, v7, :cond_2

    :cond_1
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    goto :goto_0

    .line 587
    .end local p2
    .restart local v3       #start:I
    :cond_2
    add-int/lit8 v2, v0, -0x30

    .line 588
    .local v2, result:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 589
    add-int/lit8 p2, v3, 0x1

    .end local v3           #start:I
    .restart local p2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 590
    if-lt v0, v6, :cond_3

    if-le v0, v7, :cond_4

    :cond_3
    move p3, v2

    goto :goto_0

    .line 591
    :cond_4
    mul-int/lit8 v4, v2, 0xa

    add-int/lit8 v5, v0, -0x30

    add-int v2, v4, v5

    move v3, p2

    .end local p2
    .restart local v3       #start:I
    goto :goto_1

    :cond_5
    move p2, v3

    .end local v3           #start:I
    .restart local p2
    move p3, v2

    .line 594
    goto :goto_0
.end method

.method private processImageFile(Ljava/lang/String;)V
    .locals 2
    .parameter "path"

    .prologue
    .line 684
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 685
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 686
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 687
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    .line 688
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mBitmapOptions:Landroid/graphics/BitmapFactory$Options;
    invoke-static {v0}, Landroid/media/MediaScanner;->access$1000(Landroid/media/MediaScanner;)Landroid/graphics/BitmapFactory$Options;

    move-result-object v0

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    :goto_0
    return-void

    .line 689
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Landroid/net/Uri;J)V
    .locals 3
    .parameter "settingName"
    .parameter "uri"
    .parameter "rowId"

    .prologue
    .line 935
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 938
    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 940
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {p2, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 943
    :cond_0
    return-void
.end method

.method private setSettingIfNotSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "settingName"
    .parameter "path"
    .annotation build Landroid/annotation/MiuiHook;
        value = .enum Landroid/annotation/MiuiHook$MiuiHookType;->NEW_METHOD:Landroid/annotation/MiuiHook$MiuiHookType;
    .end annotation

    .prologue
    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, existingSettingValue:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/media/MediaScanner;->access$2500(Landroid/media/MediaScanner;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method private toValues()Landroid/content/ContentValues;
    .locals 4

    .prologue
    .line 713
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 715
    .local v0, map:Landroid/content/ContentValues;
    const-string v1, "_data"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 716
    const-string/jumbo v1, "title"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v1, "date_modified"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 718
    const-string v1, "_size"

    iget-wide v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 719
    const-string/jumbo v1, "mime_type"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const-string v1, "is_drm"

    iget-boolean v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 722
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    if-lez v1, :cond_0

    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    if-lez v1, :cond_0

    .line 723
    const-string/jumbo v1, "width"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 724
    const-string v1, "height"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    :cond_0
    iget-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    if-nez v1, :cond_1

    .line 728
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 729
    const-string v2, "artist"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    const-string v2, "album"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 733
    const-string v1, "duration"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 754
    :cond_1
    :goto_2
    return-object v0

    .line 729
    :cond_2
    const-string v1, "<unknown>"

    goto :goto_0

    .line 731
    :cond_3
    const-string v1, "<unknown>"

    goto :goto_1

    .line 735
    :cond_4
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 737
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v1}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 738
    const-string v2, "artist"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 740
    const-string v2, "album_artist"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    if-eqz v1, :cond_7

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_7

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 742
    const-string v2, "album"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    if-eqz v1, :cond_8

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_8

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    :goto_5
    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    const-string v1, "composer"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 745
    const-string v1, "genre"

    iget-object v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 746
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    if-eqz v1, :cond_5

    .line 747
    const-string/jumbo v1, "year"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 749
    :cond_5
    const-string/jumbo v1, "track"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 750
    const-string v1, "duration"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 751
    const-string v1, "compilation"

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_2

    .line 738
    :cond_6
    const-string v1, "<unknown>"

    goto :goto_3

    .line 740
    :cond_7
    const/4 v1, 0x0

    goto :goto_4

    .line 742
    :cond_8
    const-string v1, "<unknown>"

    goto :goto_5
.end method


# virtual methods
.method public beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileCacheEntry;
    .locals 14
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 442
    move-object/from16 v0, p2

    iput-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 443
    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 444
    move-wide/from16 v0, p5

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileSize:J

    .line 446
    if-nez p7, :cond_3

    .line 447
    if-nez p8, :cond_0

    #calls: Landroid/media/MediaScanner;->isNoMediaFile(Ljava/lang/String;)Z
    invoke-static {p1}, Landroid/media/MediaScanner;->access$100(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 448
    const/16 p8, 0x1

    .line 450
    :cond_0
    move/from16 v0, p8

    iput-boolean v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mNoMedia:Z

    .line 453
    if-eqz p2, :cond_1

    .line 454
    invoke-static/range {p2 .. p2}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 458
    :cond_1
    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    if-nez v3, :cond_2

    .line 459
    invoke-static {p1}, Landroid/media/MediaFile;->getFileType(Ljava/lang/String;)Landroid/media/MediaFile$MediaFileType;

    move-result-object v12

    .line 460
    .local v12, mediaFileType:Landroid/media/MediaFile$MediaFileType;
    if-eqz v12, :cond_2

    .line 461
    iget v3, v12, Landroid/media/MediaFile$MediaFileType;->fileType:I

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 462
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_2

    .line 463
    iget-object v3, v12, Landroid/media/MediaFile$MediaFileType;->mimeType:Ljava/lang/String;

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 468
    .end local v12           #mediaFileType:Landroid/media/MediaFile$MediaFileType;
    :cond_2
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->isDrmEnabled()Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$200(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isDrmFileType(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 469
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->getFileTypeFromDrm(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    .line 473
    :cond_3
    move-object v11, p1

    .line 474
    .local v11, key:Ljava/lang/String;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mCaseInsensitivePaths:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$300(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 475
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    .line 477
    :cond_4
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/MediaScanner$FileCacheEntry;

    .local v2, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v2, :cond_8

    iget-wide v3, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    sub-long v9, p3, v3

    .line 490
    .local v9, delta:J
    :goto_0
    const-wide/16 v3, 0x1

    cmp-long v3, v9, v3

    if-gtz v3, :cond_5

    const-wide/16 v3, -0x1

    cmp-long v3, v9, v3

    if-gez v3, :cond_9

    :cond_5
    const/4 v13, 0x1

    .local v13, wasModified:Z
    :goto_1
    if-eqz v2, :cond_6

    if-eqz v13, :cond_7

    :cond_6
    if-eqz v13, :cond_a

    move-wide/from16 v0, p3

    iput-wide v0, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModified:J

    :goto_2
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/media/MediaScanner$FileCacheEntry;->mSeenInFileSystem:Z

    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessPlaylists:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$500(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v3}, Landroid/media/MediaFile;->isPlayListFileType(I)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 504
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mPlayLists:Ljava/util/ArrayList;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$600(Landroid/media/MediaScanner;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :goto_3
    return-object v2

    .end local v9           #delta:J
    .end local v13           #wasModified:Z
    .restart local v2       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_8
    const-wide/16 v9, 0x0

    goto :goto_0

    .restart local v9       #delta:J
    :cond_9
    const/4 v13, 0x0

    goto :goto_1

    .restart local v13       #wasModified:Z
    :cond_a
    new-instance v2, Landroid/media/MediaScanner$FileCacheEntry;

    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    const-wide/16 v3, 0x0

    if-eqz p7, :cond_b

    const/16 v8, 0x3001

    :goto_4
    move-object v5, p1

    move-wide/from16 v6, p3

    invoke-direct/range {v2 .. v8}, Landroid/media/MediaScanner$FileCacheEntry;-><init>(JLjava/lang/String;JI)V

    .line 497
    .restart local v2       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mFileCache:Ljava/util/HashMap;
    invoke-static {v3}, Landroid/media/MediaScanner;->access$400(Landroid/media/MediaScanner;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v11, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v2           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_b
    const/4 v8, 0x0

    goto :goto_4

    .restart local v2       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_c
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mPath:Ljava/lang/String;

    move-wide/from16 v0, p3

    iput-wide v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mLastModified:J

    const/4 v3, 0x0

    iput-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWidth:I

    const/4 v3, 0x0

    iput v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mHeight:I

    goto :goto_3
.end method

.method public doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;
    .locals 12
    .parameter "path"
    .parameter "mimeType"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "scanAlways"
    .parameter "noMedia"

    .prologue
    .line 540
    const/4 v11, 0x0

    .local v11, result:Landroid/net/Uri;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p9

    .line 543
    :try_start_0
    invoke-virtual/range {v0 .. v8}, Landroid/media/MediaScanner$MyMediaScannerClient;->beginFile(Ljava/lang/String;Ljava/lang/String;JJZZ)Landroid/media/MediaScanner$FileCacheEntry;

    move-result-object v1

    .line 546
    .local v1, entry:Landroid/media/MediaScanner$FileCacheEntry;
    if-eqz v1, :cond_1

    iget-boolean v0, v1, Landroid/media/MediaScanner$FileCacheEntry;->mLastModifiedChanged:Z

    if-nez v0, :cond_0

    if-eqz p8, :cond_1

    .line 547
    :cond_0
    if-eqz p9, :cond_2

    .line 548
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;

    move-result-object v11

    .line 576
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_1
    :goto_0
    return-object v11

    .line 550
    .restart local v1       #entry:Landroid/media/MediaScanner$FileCacheEntry;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    .line 551
    .local v10, lowpath:Ljava/lang/String;
    const-string v0, "/ringtones/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_7

    const/4 v2, 0x1

    .line 552
    .local v2, ringtones:Z
    :goto_1
    const-string v0, "/notifications/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_8

    const/4 v3, 0x1

    .line 553
    .local v3, notifications:Z
    :goto_2
    const-string v0, "/alarms/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v4, 0x1

    .line 554
    .local v4, alarms:Z
    :goto_3
    const-string v0, "/podcasts/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_a

    const/4 v6, 0x1

    .line 555
    .local v6, podcasts:Z
    :goto_4
    const-string v0, "/music/"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-gtz v0, :cond_3

    if-nez v2, :cond_b

    if-nez v3, :cond_b

    if-nez v4, :cond_b

    if-nez v6, :cond_b

    :cond_3
    const/4 v5, 0x1

    .line 559
    .local v5, music:Z
    :goto_5
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isAudioFileType(I)Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isVideoFileType(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 561
    :cond_4
    iget-object v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #calls: Landroid/media/MediaScanner;->processFile(Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V
    invoke-static {v0, p1, p2, p0}, Landroid/media/MediaScanner;->access$700(Landroid/media/MediaScanner;Ljava/lang/String;Ljava/lang/String;Landroid/media/MediaScannerClient;)V

    .line 564
    :cond_5
    iget v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    invoke-static {v0}, Landroid/media/MediaFile;->isImageFileType(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 565
    invoke-direct {p0, p1}, Landroid/media/MediaScanner$MyMediaScannerClient;->processImageFile(Ljava/lang/String;)V

    :cond_6
    move-object v0, p0

    .line 568
    invoke-direct/range {v0 .. v6}, Landroid/media/MediaScanner$MyMediaScannerClient;->endFile(Landroid/media/MediaScanner$FileCacheEntry;ZZZZZ)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 551
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v5           #music:Z
    .end local v6           #podcasts:Z
    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    .line 552
    .restart local v2       #ringtones:Z
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 553
    .restart local v3       #notifications:Z
    :cond_9
    const/4 v4, 0x0

    goto :goto_3

    .line 554
    .restart local v4       #alarms:Z
    :cond_a
    const/4 v6, 0x0

    goto :goto_4

    .line 555
    .restart local v6       #podcasts:Z
    :cond_b
    const/4 v5, 0x0

    goto :goto_5

    .line 571
    .end local v1           #entry:Landroid/media/MediaScanner$FileCacheEntry;
    .end local v2           #ringtones:Z
    .end local v3           #notifications:Z
    .end local v4           #alarms:Z
    .end local v6           #podcasts:Z
    .end local v10           #lowpath:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 572
    .local v9, e:Landroid/os/RemoteException;
    const-string v0, "MediaScanner"

    const-string v7, "RemoteException in MediaScanner.scanFile()"

    invoke-static {v0, v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getGenreName(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .parameter "genreTagValue"

    .prologue
    const/4 v5, 0x0

    const/16 v8, 0xff

    .line 641
    if-nez p1, :cond_1

    move-object p1, v5

    .line 679
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 644
    .restart local p1
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 646
    .local v3, length:I
    if-lez v3, :cond_0

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x28

    if-ne v6, v7, :cond_0

    .line 647
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 648
    .local v4, number:Ljava/lang/StringBuffer;
    const/4 v2, 0x1

    .line 649
    .local v2, i:I
    :goto_1
    add-int/lit8 v6, v3, -0x1

    if-ge v2, v6, :cond_2

    .line 650
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 651
    .local v0, c:C
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 652
    invoke-virtual {v4, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 649
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 657
    .end local v0           #c:C
    :cond_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x29

    if-ne v6, v7, :cond_0

    .line 659
    :try_start_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    .line 660
    .local v1, genreIndex:S
    if-ltz v1, :cond_0

    .line 661
    invoke-static {}, Landroid/media/MediaScanner;->access$900()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-ge v1, v6, :cond_3

    .line 662
    invoke-static {}, Landroid/media/MediaScanner;->access$900()[Ljava/lang/String;

    move-result-object v5

    aget-object p1, v5, v1

    goto :goto_0

    .line 663
    :cond_3
    if-ne v1, v8, :cond_4

    move-object p1, v5

    .line 664
    goto :goto_0

    .line 665
    :cond_4
    if-ge v1, v8, :cond_5

    add-int/lit8 v5, v2, 0x1

    if-ge v5, v3, :cond_5

    .line 668
    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 671
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 674
    .end local v1           #genreIndex:S
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public handleStringTag(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "name"
    .parameter "value"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 598
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "title;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 602
    :cond_0
    iput-object p2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTitle:Ljava/lang/String;

    .line 637
    :cond_1
    :goto_0
    return-void

    .line 603
    :cond_2
    const-string v3, "artist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "artist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 604
    :cond_3
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mArtist:Ljava/lang/String;

    goto :goto_0

    .line 605
    :cond_4
    const-string v3, "albumartist"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "albumartist;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "band;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 607
    :cond_5
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbumArtist:Ljava/lang/String;

    goto :goto_0

    .line 608
    :cond_6
    const-string v3, "album"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "album;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 609
    :cond_7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mAlbum:Ljava/lang/String;

    goto :goto_0

    .line 610
    :cond_8
    const-string v3, "composer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_9

    const-string v3, "composer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 611
    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mComposer:Ljava/lang/String;

    goto :goto_0

    .line 612
    :cond_a
    iget-object v3, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->this$0:Landroid/media/MediaScanner;

    #getter for: Landroid/media/MediaScanner;->mProcessGenres:Z
    invoke-static {v3}, Landroid/media/MediaScanner;->access$800(Landroid/media/MediaScanner;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "genre"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "genre;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 614
    :cond_b
    invoke-virtual {p0, p2}, Landroid/media/MediaScanner$MyMediaScannerClient;->getGenreName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mGenre:Ljava/lang/String;

    goto/16 :goto_0

    .line 615
    :cond_c
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string/jumbo v3, "year;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 616
    :cond_d
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mYear:I

    goto/16 :goto_0

    .line 617
    :cond_e
    const-string/jumbo v3, "tracknumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string/jumbo v3, "tracknumber;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    .line 620
    :cond_f
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 621
    .local v0, num:I
    iget v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit16 v1, v1, 0x3e8

    add-int/2addr v1, v0

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 622
    .end local v0           #num:I
    :cond_10
    const-string v3, "discnumber"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    const-string/jumbo v3, "set;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 626
    :cond_11
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v0

    .line 627
    .restart local v0       #num:I
    mul-int/lit16 v1, v0, 0x3e8

    iget v2, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    rem-int/lit16 v2, v2, 0x3e8

    add-int/2addr v1, v2

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mTrack:I

    goto/16 :goto_0

    .line 628
    .end local v0           #num:I
    :cond_12
    const-string v3, "duration"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 629
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mDuration:I

    goto/16 :goto_0

    .line 630
    :cond_13
    const-string/jumbo v3, "writer"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "writer;"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 631
    :cond_14
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mWriter:Ljava/lang/String;

    goto/16 :goto_0

    .line 632
    :cond_15
    const-string v3, "compilation"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 633
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mCompilation:I

    goto/16 :goto_0

    .line 634
    :cond_16
    const-string v3, "isdrm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 635
    invoke-direct {p0, p2, v2, v2}, Landroid/media/MediaScanner$MyMediaScannerClient;->parseSubstring(Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_17

    :goto_1
    iput-boolean v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mIsDrm:Z

    goto/16 :goto_0

    :cond_17
    move v1, v2

    goto :goto_1
.end method

.method public scanFile(Ljava/lang/String;JJZZ)V
    .locals 10
    .parameter "path"
    .parameter "lastModified"
    .parameter "fileSize"
    .parameter "isDirectory"
    .parameter "noMedia"

    .prologue
    .line 535
    const/4 v2, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-wide v5, p4

    move/from16 v7, p6

    move/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/media/MediaScanner$MyMediaScannerClient;->doScanFile(Ljava/lang/String;Ljava/lang/String;JJZZZ)Landroid/net/Uri;

    .line 536
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 2
    .parameter "mimeType"

    .prologue
    .line 695
    const-string v0, "audio/mp4"

    iget-object v1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "video"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 704
    :goto_0
    return-void

    .line 702
    :cond_0
    iput-object p1, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mMimeType:Ljava/lang/String;

    .line 703
    invoke-static {p1}, Landroid/media/MediaFile;->getFileTypeForMimeType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/media/MediaScanner$MyMediaScannerClient;->mFileType:I

    goto :goto_0
.end method
