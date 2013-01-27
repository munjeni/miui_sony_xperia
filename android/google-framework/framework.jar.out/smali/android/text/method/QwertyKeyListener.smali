.class public Landroid/text/method/QwertyKeyListener;
.super Landroid/text/method/BaseKeyListener;
.source "QwertyKeyListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/text/method/QwertyKeyListener$Replaced;
    }
.end annotation


# static fields
.field private static SYM_PICKER_RES_ID:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

.field private static sInstance:[Landroid/text/method/QwertyKeyListener;


# instance fields
.field private mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

.field private mAutoText:Z

.field private mFullKeyboard:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 32
    invoke-static {}, Landroid/text/method/TextKeyListener$Capitalize;->values()[Landroid/text/method/TextKeyListener$Capitalize;

    move-result-object v0

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [Landroid/text/method/QwertyKeyListener;

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    .line 432
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    .line 436
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x41

    const v2, 0x1040527

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 437
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x43

    const v2, 0x1040528

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 438
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x44

    const v2, 0x1040529

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 439
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x45

    const v2, 0x104052a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 440
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x47

    const v2, 0x104052b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 441
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x4c

    const v2, 0x104052c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 442
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x49

    const v2, 0x104052d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 443
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x4e

    const v2, 0x104052e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x4f

    const v2, 0x104052f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 445
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x52

    const v2, 0x1040530

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 446
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x53

    const v2, 0x1040531

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 447
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x54

    const v2, 0x1040532

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 448
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x55

    const v2, 0x1040533

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 449
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x59

    const v2, 0x1040534

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 450
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x5a

    const v2, 0x1040535

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 451
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x61

    const v2, 0x1040536

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 452
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x63

    const v2, 0x1040537

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 453
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x64

    const v2, 0x1040538

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 454
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x65

    const v2, 0x1040539

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 455
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x67

    const v2, 0x104053a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 456
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x69

    const v2, 0x104053b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 457
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x6c

    const v2, 0x104053c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 458
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x6e

    const v2, 0x104053d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 459
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x6f

    const v2, 0x104053e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 460
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x72

    const v2, 0x104053f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 461
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x73

    const v2, 0x1040540

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 462
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x74

    const v2, 0x1040541

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 463
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x75

    const v2, 0x1040542

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 464
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x79

    const v2, 0x1040543

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 465
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x7a

    const v2, 0x1040544

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 466
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x31

    const v2, 0x1040547

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 467
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x32

    const v2, 0x1040548

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 468
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x33

    const v2, 0x1040549

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 469
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x34

    const v2, 0x104054a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 470
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x35

    const v2, 0x104054b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 471
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x37

    const v2, 0x104054c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 472
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x30

    const v2, 0x104054d

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 473
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const v1, 0xef01

    const v2, 0x1040545

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 474
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x2f

    const v2, 0x1040546

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 475
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x24

    const v2, 0x104054e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 476
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x25

    const v2, 0x104054f

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 477
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x2a

    const v2, 0x1040550

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 478
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x2d

    const v2, 0x1040551

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 479
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x2b

    const v2, 0x1040552

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 480
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x28

    const v2, 0x1040553

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 481
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x29

    const v2, 0x1040554

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 482
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x21

    const v2, 0x1040555

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 483
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x22

    const v2, 0x1040556

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 484
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x3f

    const v2, 0x1040557

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 485
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x2c

    const v2, 0x1040558

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 486
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x3d

    const v2, 0x1040559

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 487
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x3c

    const v2, 0x104055a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 488
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    const/16 v1, 0x3e

    const v2, 0x104055b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 489
    return-void
.end method

.method public constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V
    .locals 1
    .parameter "cap"
    .parameter "autoText"

    .prologue
    .line 47
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    .line 48
    return-void
.end method

.method private constructor <init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V
    .locals 0
    .parameter "cap"
    .parameter "autoText"
    .parameter "fullKeyboard"

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/text/method/BaseKeyListener;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    .line 42
    iput-boolean p2, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    .line 43
    iput-boolean p3, p0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    .line 44
    return-void
.end method

.method public static getInstance(ZLandroid/text/method/TextKeyListener$Capitalize;)Landroid/text/method/QwertyKeyListener;
    .locals 3
    .parameter "autoText"
    .parameter "cap"

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/text/method/TextKeyListener$Capitalize;->ordinal()I

    move-result v1

    mul-int/lit8 v2, v1, 0x2

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 57
    .local v0, off:I
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    .line 58
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    new-instance v2, Landroid/text/method/QwertyKeyListener;

    invoke-direct {v2, p1, p0}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;Z)V

    aput-object v2, v1, v0

    .line 61
    :cond_0
    sget-object v1, Landroid/text/method/QwertyKeyListener;->sInstance:[Landroid/text/method/QwertyKeyListener;

    aget-object v1, v1, v0

    return-object v1

    .line 55
    .end local v0           #off:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getInstanceForFullKeyboard()Landroid/text/method/QwertyKeyListener;
    .locals 4

    .prologue
    .line 70
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    if-nez v0, :cond_0

    .line 71
    new-instance v0, Landroid/text/method/QwertyKeyListener;

    sget-object v1, Landroid/text/method/TextKeyListener$Capitalize;->NONE:Landroid/text/method/TextKeyListener$Capitalize;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Landroid/text/method/QwertyKeyListener;-><init>(Landroid/text/method/TextKeyListener$Capitalize;ZZ)V

    sput-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    .line 73
    :cond_0
    sget-object v0, Landroid/text/method/QwertyKeyListener;->sFullKeyboardInstance:Landroid/text/method/QwertyKeyListener;

    return-object v0
.end method

.method private getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 10
    .parameter "src"
    .parameter "start"
    .parameter "end"
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 363
    sub-int v4, p3, p2

    .line 364
    .local v4, len:I
    const/4 v1, 0x0

    .line 366
    .local v1, changecase:Z
    invoke-static {p1, p2, p3, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 368
    .local v6, replacement:Ljava/lang/String;
    if-nez v6, :cond_1

    .line 369
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 370
    .local v3, key:Ljava/lang/String;
    sub-int v8, p3, p2

    invoke-static {v3, v9, v8, p4}, Landroid/text/AutoText;->get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v6

    .line 371
    const/4 v1, 0x1

    .line 373
    if-nez v6, :cond_1

    move-object v5, v7

    .line 401
    .end local v3           #key:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 377
    :cond_1
    const/4 v0, 0x0

    .line 379
    .local v0, caps:I
    if-eqz v1, :cond_3

    .line 380
    move v2, p2

    .local v2, j:I
    :goto_1
    if-ge v2, p3, :cond_3

    .line 381
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v8

    invoke-static {v8}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 382
    add-int/lit8 v0, v0, 0x1

    .line 380
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 388
    .end local v2           #j:I
    :cond_3
    if-nez v0, :cond_4

    .line 389
    move-object v5, v6

    .line 397
    .local v5, out:Ljava/lang/String;
    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v4, :cond_0

    invoke-static {p1, p2, v5, v9, v4}, Landroid/text/TextUtils;->regionMatches(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v8

    if-eqz v8, :cond_0

    move-object v5, v7

    .line 399
    goto :goto_0

    .line 390
    .end local v5           #out:Ljava/lang/String;
    :cond_4
    const/4 v8, 0x1

    if-ne v0, v8, :cond_5

    .line 391
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    .line 392
    .end local v5           #out:Ljava/lang/String;
    :cond_5
    if-ne v0, v4, :cond_6

    .line 393
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2

    .line 395
    .end local v5           #out:Ljava/lang/String;
    :cond_6
    invoke-static {v6}, Landroid/text/method/QwertyKeyListener;->toTitleCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .restart local v5       #out:Ljava/lang/String;
    goto :goto_2
.end method

.method public static markAsReplaced(Landroid/text/Spannable;IILjava/lang/String;)V
    .locals 7
    .parameter "content"
    .parameter "start"
    .parameter "end"
    .parameter "original"

    .prologue
    const/4 v6, 0x0

    .line 419
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v4

    const-class v5, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-interface {p0, v6, v4, v5}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 420
    .local v3, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    const/4 v0, 0x0

    .local v0, a:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 421
    aget-object v4, v3, v0

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 420
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    .line 425
    .local v1, len:I
    new-array v2, v1, [C

    .line 426
    .local v2, orig:[C
    invoke-virtual {p3, v6, v1, v2, v6}, Ljava/lang/String;->getChars(II[CI)V

    .line 428
    new-instance v4, Landroid/text/method/QwertyKeyListener$Replaced;

    invoke-direct {v4, v2}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v5, 0x21

    invoke-interface {p0, v4, p1, p2, v5}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 430
    return-void
.end method

.method private showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z
    .locals 8
    .parameter "view"
    .parameter "content"
    .parameter "c"
    .parameter "insert"
    .parameter "count"

    .prologue
    const/4 v7, 0x1

    .line 493
    sget-object v0, Landroid/text/method/QwertyKeyListener;->SYM_PICKER_RES_ID:Landroid/util/SparseArray;

    invoke-virtual {v0, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 495
    .local v6, resId:Ljava/lang/Integer;
    if-nez v6, :cond_0

    .line 496
    const/4 v0, 0x0

    .line 506
    :goto_0
    return v0

    .line 499
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 501
    .local v4, set:Ljava/lang/String;
    if-ne p5, v7, :cond_1

    .line 502
    new-instance v0, Landroid/text/method/CharacterPickerDialog;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/text/method/CharacterPickerDialog;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/text/Editable;Ljava/lang/String;Z)V

    invoke-virtual {v0}, Landroid/text/method/CharacterPickerDialog;->show()V

    :cond_1
    move v0, v7

    .line 506
    goto :goto_0
.end method

.method private static toTitleCase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "src"

    .prologue
    .line 510
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInputType()I
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    iget-boolean v1, p0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    invoke-static {v0, v1}, Landroid/text/method/QwertyKeyListener;->makeTextContentType(Landroid/text/method/TextKeyListener$Capitalize;Z)I

    move-result v0

    return v0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 44
    .parameter "view"
    .parameter "content"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 83
    const/16 v34, 0x0

    .line 85
    .local v34, pref:I
    if-eqz p1, :cond_0

    .line 86
    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/method/TextKeyListener;->getPrefs(Landroid/content/Context;)I

    move-result v34

    .line 90
    :cond_0
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v17

    .line 91
    .local v17, a:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    .line 93
    .local v21, b:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v39

    .line 94
    .local v39, selStart:I
    move/from16 v0, v17

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v38

    .line 96
    .local v38, selEnd:I
    if-ltz v39, :cond_1

    if-gez v38, :cond_2

    .line 97
    :cond_1
    const/16 v38, 0x0

    move/from16 v39, v38

    .line 98
    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 102
    :cond_2
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v20

    .line 103
    .local v20, activeStart:I
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v19

    .line 107
    .local v19, activeEnd:I
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v5

    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->getMetaState(Ljava/lang/CharSequence;)I

    move-result v6

    or-int/2addr v5, v6

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result v29

    .line 109
    .local v29, i:I
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mFullKeyboard:Z

    if-nez v5, :cond_4

    .line 110
    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v10

    .line 111
    .local v10, count:I
    if-lez v10, :cond_4

    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_4

    if-lez v39, :cond_4

    .line 112
    add-int/lit8 v5, v39, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 114
    .local v8, c:C
    move/from16 v0, v29

    if-eq v8, v0, :cond_3

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v5

    if-ne v8, v5, :cond_4

    if-eqz p1, :cond_4

    .line 115
    :cond_3
    const/4 v9, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 116
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 117
    const/4 v5, 0x1

    .line 358
    .end local v8           #c:C
    .end local v10           #count:I
    :goto_0
    return v5

    .line 123
    :cond_4
    const v5, 0xef01

    move/from16 v0, v29

    if-ne v0, v5, :cond_6

    .line 124
    if-eqz p1, :cond_5

    .line 125
    const v14, 0xef01

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v13, p2

    invoke-direct/range {v11 .. v16}, Landroid/text/method/QwertyKeyListener;->showCharacterPicker(Landroid/view/View;Landroid/text/Editable;CZI)Z

    .line 128
    :cond_5
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->resetMetaState(Landroid/text/Spannable;)V

    .line 129
    const/4 v5, 0x1

    goto :goto_0

    .line 132
    :cond_6
    const v5, 0xef04

    move/from16 v0, v29

    if-eq v0, v5, :cond_7

    const v5, 0xef03

    move/from16 v0, v29

    if-ne v0, v5, :cond_9

    .line 133
    :cond_7
    if-nez v39, :cond_8

    const-string/jumbo v5, "www."

    :goto_1
    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 134
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 135
    const/4 v5, 0x1

    goto :goto_0

    .line 133
    :cond_8
    const-string v5, ".com"

    goto :goto_1

    .line 138
    :cond_9
    const v5, 0xef00

    move/from16 v0, v29

    if-ne v0, v5, :cond_c

    .line 141
    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_a

    .line 142
    move/from16 v41, v38

    .line 145
    .local v41, start:I
    :goto_2
    if-lez v41, :cond_b

    sub-int v5, v38, v41

    const/4 v6, 0x4

    if-ge v5, v6, :cond_b

    add-int/lit8 v5, v41, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    if-ltz v5, :cond_b

    .line 146
    add-int/lit8 v41, v41, -0x1

    goto :goto_2

    .line 149
    .end local v41           #start:I
    :cond_a
    move/from16 v41, v39

    .line 152
    .restart local v41       #start:I
    :cond_b
    const/16 v22, -0x1

    .line 154
    .local v22, ch:I
    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, v41

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object v28

    .line 155
    .local v28, hex:Ljava/lang/String;
    const/16 v5, 0x10

    move-object/from16 v0, v28

    invoke-static {v0, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v22

    .line 158
    .end local v28           #hex:Ljava/lang/String;
    :goto_3
    if-ltz v22, :cond_15

    .line 159
    move/from16 v39, v41

    .line 160
    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 161
    move/from16 v29, v22

    .line 167
    .end local v22           #ch:I
    .end local v41           #start:I
    :cond_c
    :goto_4
    if-eqz v29, :cond_1f

    .line 168
    const/16 v25, 0x0

    .line 170
    .local v25, dead:Z
    const/high16 v5, -0x8000

    and-int v5, v5, v29

    if-eqz v5, :cond_d

    .line 171
    const/16 v25, 0x1

    .line 172
    const v5, 0x7fffffff

    and-int v29, v29, v5

    .line 175
    :cond_d
    move/from16 v0, v20

    move/from16 v1, v39

    if-ne v0, v1, :cond_f

    move/from16 v0, v19

    move/from16 v1, v38

    if-ne v0, v1, :cond_f

    .line 176
    const/16 v37, 0x0

    .line 178
    .local v37, replace:Z
    sub-int v5, v38, v39

    add-int/lit8 v5, v5, -0x1

    if-nez v5, :cond_e

    .line 179
    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v1}, Landroid/text/Editable;->charAt(I)C

    move-result v18

    .line 180
    .local v18, accent:C
    move/from16 v0, v18

    move/from16 v1, v29

    invoke-static {v0, v1}, Landroid/view/KeyEvent;->getDeadChar(II)I

    move-result v23

    .line 182
    .local v23, composed:I
    if-eqz v23, :cond_e

    .line 183
    move/from16 v29, v23

    .line 184
    const/16 v37, 0x1

    .line 188
    .end local v18           #accent:C
    .end local v23           #composed:I
    :cond_e
    if-nez v37, :cond_f

    .line 189
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 190
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 191
    move/from16 v39, v38

    .line 195
    .end local v37           #replace:Z
    :cond_f
    and-int/lit8 v5, v34, 0x1

    if-eqz v5, :cond_10

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->isLowerCase(I)Z

    move-result v5

    if-eqz v5, :cond_10

    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoCap:Landroid/text/method/TextKeyListener$Capitalize;

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-static {v5, v0, v1}, Landroid/text/method/TextKeyListener;->shouldCap(Landroid/text/method/TextKeyListener$Capitalize;Ljava/lang/CharSequence;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 198
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v42

    .line 199
    .local v42, where:I
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanFlags(Ljava/lang/Object;)I

    move-result v27

    .line 201
    .local v27, flags:I
    move/from16 v0, v42

    move/from16 v1, v39

    if-ne v0, v1, :cond_16

    shr-int/lit8 v5, v27, 0x10

    const v6, 0xffff

    and-int/2addr v5, v6

    move/from16 v0, v29

    if-ne v5, v0, :cond_16

    .line 202
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 218
    .end local v27           #flags:I
    .end local v42           #where:I
    :cond_10
    :goto_5
    move/from16 v0, v39

    move/from16 v1, v38

    if-eq v0, v1, :cond_11

    .line 219
    move-object/from16 v0, p2

    move/from16 v1, v38

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    .line 221
    :cond_11
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    const/16 v6, 0x11

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v39

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 224
    move/from16 v0, v29

    int-to-char v5, v0

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    move/from16 v1, v39

    move/from16 v2, v38

    invoke-interface {v0, v1, v2, v5}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 226
    sget-object v5, Landroid/text/method/QwertyKeyListener;->OLD_SEL_START:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v32

    .line 227
    .local v32, oldStart:I
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v38

    .line 229
    move/from16 v0, v32

    move/from16 v1, v38

    if-ge v0, v1, :cond_12

    .line 230
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 234
    if-eqz v25, :cond_12

    .line 235
    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 236
    sget-object v5, Landroid/text/method/TextKeyListener;->ACTIVE:Ljava/lang/Object;

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v32

    move/from16 v2, v38

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 241
    :cond_12
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 246
    and-int/lit8 v5, v34, 0x2

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v5, :cond_1a

    const/16 v5, 0x20

    move/from16 v0, v29

    if-eq v0, v5, :cond_13

    const/16 v5, 0x9

    move/from16 v0, v29

    if-eq v0, v5, :cond_13

    const/16 v5, 0xa

    move/from16 v0, v29

    if-eq v0, v5, :cond_13

    const/16 v5, 0x2c

    move/from16 v0, v29

    if-eq v0, v5, :cond_13

    const/16 v5, 0x2e

    move/from16 v0, v29

    if-eq v0, v5, :cond_13

    const/16 v5, 0x21

    move/from16 v0, v29

    if-eq v0, v5, :cond_13

    const/16 v5, 0x3f

    move/from16 v0, v29

    if-eq v0, v5, :cond_13

    const/16 v5, 0x22

    move/from16 v0, v29

    if-eq v0, v5, :cond_13

    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->getType(I)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_1a

    :cond_13
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move/from16 v0, v32

    if-eq v5, v0, :cond_1a

    .line 254
    move/from16 v43, v32

    .local v43, x:I
    :goto_6
    if-lez v43, :cond_14

    .line 255
    add-int/lit8 v5, v43, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 256
    .restart local v8       #c:C
    const/16 v5, 0x27

    if-eq v8, v5, :cond_18

    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_18

    .line 261
    .end local v8           #c:C
    :cond_14
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v43

    move/from16 v3, v32

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/text/method/QwertyKeyListener;->getReplacement(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;

    move-result-object v35

    .line 263
    .local v35, rep:Ljava/lang/String;
    if-eqz v35, :cond_1a

    .line 264
    const/4 v5, 0x0

    invoke-interface/range {p2 .. p2}, Landroid/text/Editable;->length()I

    move-result v6

    const-class v7, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 266
    .local v36, repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    const/16 v17, 0x0

    :goto_7
    move-object/from16 v0, v36

    array-length v5, v0

    move/from16 v0, v17

    if-ge v0, v5, :cond_19

    .line 267
    aget-object v5, v36, v17

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 266
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 163
    .end local v25           #dead:Z
    .end local v32           #oldStart:I
    .end local v35           #rep:Ljava/lang/String;
    .end local v36           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v43           #x:I
    .restart local v22       #ch:I
    .restart local v41       #start:I
    :cond_15
    const/16 v29, 0x0

    goto/16 :goto_4

    .line 204
    .end local v22           #ch:I
    .end local v41           #start:I
    .restart local v25       #dead:Z
    .restart local v27       #flags:I
    .restart local v42       #where:I
    :cond_16
    shl-int/lit8 v27, v29, 0x10

    .line 205
    invoke-static/range {v29 .. v29}, Ljava/lang/Character;->toUpperCase(I)I

    move-result v29

    .line 207
    if-nez v39, :cond_17

    .line 208
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    const/4 v6, 0x0

    const/4 v7, 0x0

    or-int/lit8 v9, v27, 0x11

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7, v9}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    .line 211
    :cond_17
    sget-object v5, Landroid/text/method/TextKeyListener;->CAPPED:Ljava/lang/Object;

    add-int/lit8 v6, v39, -0x1

    or-int/lit8 v7, v27, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v5, v6, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    .line 254
    .end local v27           #flags:I
    .end local v42           #where:I
    .restart local v8       #c:C
    .restart local v32       #oldStart:I
    .restart local v43       #x:I
    :cond_18
    add-int/lit8 v43, v43, -0x1

    goto :goto_6

    .line 269
    .end local v8           #c:C
    .restart local v35       #rep:Ljava/lang/String;
    .restart local v36       #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    :cond_19
    sub-int v5, v32, v43

    new-array v0, v5, [C

    move-object/from16 v33, v0

    .line 270
    .local v33, orig:[C
    const/4 v5, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    move-object/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v5}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 272
    new-instance v5, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, v33

    invoke-direct {v5, v0}, Landroid/text/method/QwertyKeyListener$Replaced;-><init>([C)V

    const/16 v6, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 274
    move-object/from16 v0, p2

    move/from16 v1, v43

    move/from16 v2, v32

    move-object/from16 v3, v35

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 280
    .end local v33           #orig:[C
    .end local v35           #rep:Ljava/lang/String;
    .end local v36           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v43           #x:I
    :cond_1a
    and-int/lit8 v5, v34, 0x4

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/text/method/QwertyKeyListener;->mAutoText:Z

    if-eqz v5, :cond_1e

    .line 281
    invoke-static/range {p2 .. p2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v38

    .line 282
    add-int/lit8 v5, v38, -0x3

    if-ltz v5, :cond_1e

    .line 283
    add-int/lit8 v5, v38, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1e

    add-int/lit8 v5, v38, -0x2

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_1e

    .line 285
    add-int/lit8 v5, v38, -0x3

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 287
    .restart local v8       #c:C
    add-int/lit8 v30, v38, -0x3

    .local v30, j:I
    :goto_8
    if-lez v30, :cond_1c

    .line 288
    const/16 v5, 0x22

    if-eq v8, v5, :cond_1b

    invoke-static {v8}, Ljava/lang/Character;->getType(C)I

    move-result v5

    const/16 v6, 0x16

    if-ne v5, v6, :cond_1c

    .line 290
    :cond_1b
    add-int/lit8 v5, v30, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v8

    .line 287
    add-int/lit8 v30, v30, -0x1

    goto :goto_8

    .line 296
    :cond_1c
    invoke-static {v8}, Ljava/lang/Character;->isLetter(C)Z

    move-result v5

    if-nez v5, :cond_1d

    invoke-static {v8}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 297
    :cond_1d
    add-int/lit8 v5, v38, -0x2

    add-int/lit8 v6, v38, -0x1

    const-string v7, "."

    move-object/from16 v0, p2

    invoke-interface {v0, v5, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 303
    .end local v8           #c:C
    .end local v30           #j:I
    :cond_1e
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 304
    .end local v25           #dead:Z
    .end local v32           #oldStart:I
    :cond_1f
    const/16 v5, 0x43

    move/from16 v0, p3

    if-ne v0, v5, :cond_24

    invoke-virtual/range {p4 .. p4}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v5

    if-nez v5, :cond_20

    const/4 v5, 0x2

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result v5

    if-eqz v5, :cond_24

    :cond_20
    move/from16 v0, v39

    move/from16 v1, v38

    if-ne v0, v1, :cond_24

    .line 309
    const/16 v24, 0x1

    .line 316
    .local v24, consider:I
    sget-object v5, Landroid/text/method/TextKeyListener;->LAST_TYPED:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    move/from16 v0, v39

    if-ne v5, v0, :cond_21

    .line 317
    add-int/lit8 v5, v39, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_21

    .line 318
    const/16 v24, 0x2

    .line 321
    :cond_21
    sub-int v5, v39, v24

    const-class v6, Landroid/text/method/QwertyKeyListener$Replaced;

    move-object/from16 v0, p2

    move/from16 v1, v39

    invoke-interface {v0, v5, v1, v6}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [Landroid/text/method/QwertyKeyListener$Replaced;

    .line 324
    .restart local v36       #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    move-object/from16 v0, v36

    array-length v5, v0

    if-lez v5, :cond_24

    .line 325
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v40

    .line 326
    .local v40, st:I
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v26

    .line 327
    .local v26, en:I
    new-instance v31, Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v5, v36, v5

    #getter for: Landroid/text/method/QwertyKeyListener$Replaced;->mText:[C
    invoke-static {v5}, Landroid/text/method/QwertyKeyListener$Replaced;->access$000(Landroid/text/method/QwertyKeyListener$Replaced;)[C

    move-result-object v5

    move-object/from16 v0, v31

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    .line 329
    .local v31, old:Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v36, v5

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 335
    move/from16 v0, v39

    move/from16 v1, v26

    if-lt v0, v1, :cond_23

    .line 336
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    const/16 v6, 0x22

    move-object/from16 v0, p2

    move/from16 v1, v26

    move/from16 v2, v26

    invoke-interface {v0, v5, v1, v2, v6}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 338
    move-object/from16 v0, p2

    move/from16 v1, v40

    move/from16 v2, v26

    move-object/from16 v3, v31

    invoke-interface {v0, v1, v2, v3}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 340
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v26

    .line 341
    add-int/lit8 v5, v26, -0x1

    if-ltz v5, :cond_22

    .line 342
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    add-int/lit8 v6, v26, -0x1

    const/16 v7, 0x21

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-interface {v0, v5, v6, v1, v7}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 348
    :goto_9
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 354
    const/4 v5, 0x1

    goto/16 :goto_0

    .line 346
    :cond_22
    sget-object v5, Landroid/text/method/TextKeyListener;->INHIBIT_REPLACEMENT:Ljava/lang/Object;

    move-object/from16 v0, p2

    invoke-interface {v0, v5}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_9

    .line 350
    :cond_23
    invoke-static/range {p2 .. p2}, Landroid/text/method/QwertyKeyListener;->adjustMetaAfterKeypress(Landroid/text/Spannable;)V

    .line 351
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 358
    .end local v24           #consider:I
    .end local v26           #en:I
    .end local v31           #old:Ljava/lang/String;
    .end local v36           #repl:[Landroid/text/method/QwertyKeyListener$Replaced;
    .end local v40           #st:I
    :cond_24
    invoke-super/range {p0 .. p4}, Landroid/text/method/BaseKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v5

    goto/16 :goto_0

    .line 156
    .restart local v22       #ch:I
    .restart local v41       #start:I
    :catch_0
    move-exception v5

    goto/16 :goto_3
.end method
