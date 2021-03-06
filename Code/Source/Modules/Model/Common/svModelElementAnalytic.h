#ifndef SVMODELELEMENTANALYTIC_H
#define SVMODELELEMENTANALYTIC_H

#include <svModelExports.h>

#include "svModelElement.h"
#include "svModelElementPolyData.h"

class SVMODEL_EXPORT svModelElementAnalytic : public svModelElement
{
public:

    svModelElementAnalytic();

    svModelElementAnalytic(const svModelElementAnalytic &other);

    virtual ~svModelElementAnalytic();

    virtual svModelElementAnalytic* Clone() override;

    virtual vtkSmartPointer<vtkPolyData> CreateFaceVtkPolyData(int id) override;

    virtual vtkSmartPointer<vtkPolyData> CreateWholeVtkPolyData() override;

    virtual void AddBlendRadii(std::vector<svBlendParamRadius*> moreBlendRadii) override;

    virtual double GetMaxDist();

    virtual void SetMaxDist(double maxDist);

    virtual svModelElementPolyData* ConverToPolyDataModel();

protected:

    double m_MaxDist;

};

#endif // SVMODELELEMENTANALYTIC_H
